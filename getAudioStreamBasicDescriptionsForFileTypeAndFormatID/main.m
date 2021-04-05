//
//  main.m
//  Audio Processing with Core Audio
//
//  Created by Panayotis Matsinopoulos on 5/4/21.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import "getFileTypeFromUser.h"
#import "getFormatIDFromuser.h"

void logUserInputData(const AudioFileTypeAndFormatID *inFileTypeAndFormat) {
  UInt32 fileType4cc = CFSwapInt32HostToBig(inFileTypeAndFormat->mFileType);
  UInt32 formatID4cc = CFSwapInt32HostToBig(inFileTypeAndFormat->mFormatID);
  NSLog(@"File Type: %4.4s, Format ID: %4.4s\n", (char *)&fileType4cc, (char *)&formatID4cc);
}

OSStatus getAudioStreamBasicDescriptionsForFileTypeAndFormatID(
  const AudioFileTypeAndFormatID *inFileTypeAndFormat,
  UInt32* outNumberOfAudioStreamBasicDescriptions,
  AudioStreamBasicDescription** outAudioStreamBasicDescriptions
) {
  OSStatus error = noErr;
  UInt32 infoSize = 0;
  error = AudioFileGetGlobalInfoSize(kAudioFileGlobalInfo_AvailableStreamDescriptionsForFormat,
                                     sizeof(*inFileTypeAndFormat),
                                     (void *)inFileTypeAndFormat,
                                     &infoSize);
  if (error != noErr) {
    return error;
  }
  
  *outAudioStreamBasicDescriptions = malloc(infoSize);
  
  error = AudioFileGetGlobalInfo(kAudioFileGlobalInfo_AvailableStreamDescriptionsForFormat,
                                 sizeof(*inFileTypeAndFormat),
                                 (void *)inFileTypeAndFormat,
                                 &infoSize,
                                 *outAudioStreamBasicDescriptions);
  if (error != noErr) {
    return error;
  }
  *outNumberOfAudioStreamBasicDescriptions = infoSize / sizeof(AudioStreamBasicDescription);
  
  return noErr;
}

BOOL printErrorInformation(OSStatus inError) {
  if (inError != noErr) {
    UInt32 errorcc = CFSwapInt32HostToBig(inError);
    const char *errorString = (const char *)&errorcc;
    NSLog(@"error: %4.4s", errorString);
    if ([[NSString stringWithFormat:@"%4.4s", errorString] isEqualTo:@"fmt?"]) {
      NSLog(@"...combination specified is not supported\n");
    }
    return TRUE;
  }
  return FALSE;
}
  
int main(int argc, const char * argv[]) {
  @autoreleasepool {
    AudioFileTypeAndFormatID fileTypeAndFormat;
    
    fileTypeAndFormat.mFileType = getFileTypeFromUser();
    fileTypeAndFormat.mFormatID = getFormatIDFromUser();
    
    OSStatus error = noErr;
    
    logUserInputData(&fileTypeAndFormat);
    
    BOOL errorPresent = printErrorInformation(error);
    if (errorPresent) {
      return 1;
    }

    AudioStreamBasicDescription* audioStreamBasicDescriptions = nil;
    UInt32 numberOfAudioStreamBasicDescriptions = 0;
    
    error = getAudioStreamBasicDescriptionsForFileTypeAndFormatID(
      &fileTypeAndFormat,
      &numberOfAudioStreamBasicDescriptions,
      &audioStreamBasicDescriptions
    );
    
    errorPresent = printErrorInformation(error);
    if (errorPresent) {
      return 1;
    }
    
    for (int i = 0; i < numberOfAudioStreamBasicDescriptions; i++) {
      UInt32 format4cc = CFSwapInt32HostToBig(audioStreamBasicDescriptions[i].mFormatID);
      
      NSLog(@"%d: mFormatId: %4.4s, mFormatFlags: %d, mBitsPerChannel: %d",
            i, (char*)&format4cc, audioStreamBasicDescriptions[i].mFormatFlags,
            audioStreamBasicDescriptions[i].mBitsPerChannel);
    }
    
    free(audioStreamBasicDescriptions);
  }
  return 0;
}

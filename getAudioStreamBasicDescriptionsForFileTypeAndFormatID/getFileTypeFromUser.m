//
//  getFileTypeFromUser.m
//  Audio Processing with Core Audio
//
//  Created by Panayotis Matsinopoulos on 5/4/21.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import "Input.h"

void printAllAvailableFileTypes(void) {
  NSLog(@" 1 : AIFF\n");
  NSLog(@" 2 : AIFC\n");
  NSLog(@" 3 : WAVE\n");
  NSLog(@" 4 : RF64\n");
  NSLog(@" 5 : BW64\n");
  NSLog(@" 6 : W64f\n");
  NSLog(@" 7 : Sd2f\n");
  NSLog(@" 8 : NeXT\n");
  NSLog(@" 9 : MPG3\n");
  NSLog(@"10 : MPG2\n");
  NSLog(@"11 : MPG1\n");
  NSLog(@"12 : ac-3\n");
  NSLog(@"13 : adts\n");
  NSLog(@"14 : mp4f\n");
  NSLog(@"15 : m4af\n");
  NSLog(@"16 : m4bf\n");
  NSLog(@"17 : caff\n");
  NSLog(@"18 : 3gpp\n");
  NSLog(@"19 : 3gp2\n");
  NSLog(@"20 : amrf\n");
  NSLog(@"21 : flac\n");
  NSLog(@"22 : loas\n");
}

int getFileTypeFromUser(void) {
  NSLog(@"Select the file type\n");
  printAllAvailableFileTypes();
  
  NSString *userInput = [Input getUserInput];
  
  if ([userInput isEqualTo:@"1"]) {
    return kAudioFileAIFFType;
  }
  else if ([userInput isEqualTo:@"2"]) {
    return kAudioFileAIFCType;
  }
  else if ([userInput isEqualTo:@"3"]) {
    return kAudioFileWAVEType;
  }
  else if ([userInput isEqualTo:@"3"]) {
    return kAudioFileWAVEType;
  }
  else if ([userInput isEqualTo:@"4"]) {
    return kAudioFileRF64Type;
  }
  else if ([userInput isEqualTo:@"5"]) {
    return kAudioFileBW64Type;
  }
  else if ([userInput isEqualTo:@"6"]) {
    return kAudioFileWave64Type;
  }
  else if ([userInput isEqualTo:@"7"]) {
    return kAudioFileSoundDesigner2Type;
  }
  else if ([userInput isEqualTo:@"8"]) {
    return kAudioFileNextType;
  }
  else if ([userInput isEqualTo:@"9"]) {
    return kAudioFileMP3Type;
  }
  else if ([userInput isEqualTo:@"10"]) {
    return kAudioFileMP2Type;
  }
  else if ([userInput isEqualTo:@"11"]) {
    return kAudioFileMP1Type;
  }
  else if ([userInput isEqualTo:@"12"]) {
    return kAudioFileAC3Type;
  }
  else if ([userInput isEqualTo:@"13"]) {
    return kAudioFileAAC_ADTSType;
  }
  else if ([userInput isEqualTo:@"14"]) {
    return kAudioFileMPEG4Type;
  }
  else if ([userInput isEqualTo:@"15"]) {
    return kAudioFileM4AType;
  }
  else if ([userInput isEqualTo:@"16"]) {
    return kAudioFileM4BType;
  }
  else if ([userInput isEqualTo:@"17"]) {
    return kAudioFileCAFType;
  }
  else if ([userInput isEqualTo:@"18"]) {
    return kAudioFile3GPType;
  }
  else if ([userInput isEqualTo:@"19"]) {
    return kAudioFile3GP2Type;
  }
  else if ([userInput isEqualTo:@"20"]) {
    return kAudioFileAMRType;
  }
  else if ([userInput isEqualTo:@"21"]) {
    return kAudioFileFLACType;
  }
  else if ([userInput isEqualTo:@"22"]) {
    return kAudioFileLATMInLOASType;
  }
  else {
    return 0;
  }
}


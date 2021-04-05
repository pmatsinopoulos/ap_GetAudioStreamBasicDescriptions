//
//  getFormatIDFromUser.m
//  Audio Processing with Core Audio
//
//  Created by Panayotis Matsinopoulos on 5/4/21.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import "Input.h"

void printAllAvailableFormatIDs(void) {
  NSLog(@" 1 : lpcm\n");
  NSLog(@" 2 : ac-3\n");
  NSLog(@" 3 : cac3\n");
  NSLog(@" 4 : ima4\n");
  NSLog(@" 5 : aac\n");
  NSLog(@" 6 : celp\n");
  NSLog(@" 7 : hvxc\n");
  NSLog(@" 8 : twvq\n");
  NSLog(@" 9 : MAC3\n");
  NSLog(@"10 : MAC6\n");
  NSLog(@"11 : ulaw\n");
  NSLog(@"12 : alaw\n");
  NSLog(@"13 : QDMC\n");
  NSLog(@"14 : QDM2\n");
  NSLog(@"15 : Qclp\n");
  NSLog(@"16 : .mp1\n");
  NSLog(@"17 : .mp2\n");
  NSLog(@"18 : .mp3\n");
  NSLog(@"19 : time\n");
  NSLog(@"20 : midi\n");
  NSLog(@"21 : apvs\n");
  NSLog(@"22 : alac\n");
  NSLog(@"23 : aach\n");
  NSLog(@"24 : aacl\n");
  NSLog(@"25 : aace\n");
  NSLog(@"26 : aacf\n");
  NSLog(@"27 : aacg\n");
  NSLog(@"28 : aacp\n");
  NSLog(@"29 : aacs\n");
  NSLog(@"30 : usac\n");
  NSLog(@"31 : samr\n");
  NSLog(@"32 : sawb\n");
  NSLog(@"33 : AUDB\n");
  NSLog(@"34 : ilbc\n");
  NSLog(@"35 : 0x6D730011\n");
  NSLog(@"36 : 0x6D730031\n");
  NSLog(@"37 : aes3\n");
  NSLog(@"38 : ec-3\n");
  NSLog(@"39 : flac\n");
  NSLog(@"40 : opus\n");
}

int getFormatIDFromUser(void) {
  NSLog(@"Select the format ID\n");
  printAllAvailableFormatIDs();
  
  NSString *userInput = [Input getUserInput];
  
  if ([userInput isEqualTo:@"1"]) {
    return kAudioFormatLinearPCM;
  }
  else if ([userInput isEqualTo:@"2"]) {
    return kAudioFormatAC3;
  }
  else if ([userInput isEqualTo:@"3"]) {
    return kAudioFormat60958AC3;
  }
  else if ([userInput isEqualTo:@"4"]) {
    return kAudioFormatAppleIMA4;
  }
  else if ([userInput isEqualTo:@"5"]) {
    return kAudioFormatMPEG4AAC;
  }
  else if ([userInput isEqualTo:@"6"]) {
    return kAudioFormatMPEG4CELP;
  }
  else if ([userInput isEqualTo:@"7"]) {
    return kAudioFormatMPEG4HVXC;
  }
  else if ([userInput isEqualTo:@"8"]) {
    return kAudioFormatMPEG4TwinVQ;
  }
  else if ([userInput isEqualTo:@"9"]) {
    return kAudioFormatMACE3;
  }
  else if ([userInput isEqualTo:@"10"]) {
    return kAudioFormatMACE6;
  }
  else if ([userInput isEqualTo:@"11"]) {
    return kAudioFormatULaw;
  }
  else if ([userInput isEqualTo:@"12"]) {
    return kAudioFormatALaw;
  }
  else if ([userInput isEqualTo:@"13"]) {
    return kAudioFormatQDesign;
  }
  else if ([userInput isEqualTo:@"14"]) {
    return kAudioFormatQDesign2;
  }
  else if ([userInput isEqualTo:@"15"]) {
    return kAudioFormatQUALCOMM;
  }
  else if ([userInput isEqualTo:@"16"]) {
    return kAudioFormatMPEGLayer1;
  }
  else if ([userInput isEqualTo:@"17"]) {
    return kAudioFormatMPEGLayer2;
  }
  else if ([userInput isEqualTo:@"18"]) {
    return kAudioFormatMPEGLayer3;
  }
  else if ([userInput isEqualTo:@"19"]) {
    return kAudioFormatTimeCode;
  }
  else if ([userInput isEqualTo:@"20"]) {
    return kAudioFormatMIDIStream;
  }
  else if ([userInput isEqualTo:@"21"]) {
    return kAudioFormatParameterValueStream;
  }
  else if ([userInput isEqualTo:@"22"]) {
    return kAudioFormatAppleLossless;
  }
  else if ([userInput isEqualTo:@"23"]) {
    return kAudioFormatMPEG4AAC_HE;
  }
  else if ([userInput isEqualTo:@"24"]) {
    return kAudioFormatMPEG4AAC_LD;
  }
  else if ([userInput isEqualTo:@"25"]) {
    return kAudioFormatMPEG4AAC_ELD;
  }
  else if ([userInput isEqualTo:@"26"]) {
    return kAudioFormatMPEG4AAC_ELD_SBR;
  }
  else if ([userInput isEqualTo:@"27"]) {
    return kAudioFormatMPEG4AAC_ELD_V2;
  }
  else if ([userInput isEqualTo:@"28"]) {
    return kAudioFormatMPEG4AAC_HE_V2;
  }
  else if ([userInput isEqualTo:@"29"]) {
    return kAudioFormatMPEG4AAC_Spatial;
  }
  else if ([userInput isEqualTo:@"30"]) {
    return kAudioFormatMPEGD_USAC;
  }
  else if ([userInput isEqualTo:@"31"]) {
    return kAudioFormatAMR;
  }
  else if ([userInput isEqualTo:@"32"]) {
    return kAudioFormatAMR_WB;
  }
  else if ([userInput isEqualTo:@"33"]) {
    return kAudioFormatAudible;
  }
  else if ([userInput isEqualTo:@"34"]) {
    return kAudioFormatiLBC;
  }
  else if ([userInput isEqualTo:@"35"]) {
    return kAudioFormatDVIIntelIMA;
  }
  else if ([userInput isEqualTo:@"36"]) {
    return kAudioFormatMicrosoftGSM;
  }
  else if ([userInput isEqualTo:@"37"]) {
    return kAudioFormatAES3;
  }
  else if ([userInput isEqualTo:@"38"]) {
    return kAudioFormatEnhancedAC3;
  }
  else if ([userInput isEqualTo:@"39"]) {
    return kAudioFormatFLAC;
  }
  else if ([userInput isEqualTo:@"40"]) {
    return kAudioFormatOpus;
  }
  else {
    return 0;
  }
}


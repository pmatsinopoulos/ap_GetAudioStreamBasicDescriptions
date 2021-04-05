//
//  Input.m
//  Audio Processing with Core Audio
//
//  Created by Panayotis Matsinopoulos on 5/4/21.
//

#import <Foundation/Foundation.h>
#import "Input.h"

@implementation Input

+(NSString *)getUserInput {
  NSFileHandle *handle = [NSFileHandle fileHandleWithStandardInput];
  NSData *data = handle.availableData;
  NSString *input = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
  
  NSCharacterSet *set = [NSCharacterSet newlineCharacterSet];
  NSString *userInput = [input stringByTrimmingCharactersInSet:set];
  
  return userInput;
}

@end

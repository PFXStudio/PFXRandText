//
//  PFXRandStringManager.m
//  PFXRandText
//
//  Created by succorer on 2016. 1. 15..
//  Copyright © 2016년 succorer. All rights reserved.
//

#import "PFXRandStringManager.h"

#define MIN_LENGTH 4
#define RAND_LENGTH 10
#define START_ALPHABET 65
#define END_ALPHABET 90
#define MAX_ALPHABET 26
#define UPPER_ALPHABET 65
#define LOWER_ALPHABET 97

@implementation PFXRandStringManager

+ (instancetype)sharedRandStringManager
{
    static PFXRandStringManager *s_randStringManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        s_randStringManager = [PFXRandStringManager new];
    });
    
    return s_randStringManager;
    
}

- (NSString *)createString
{
    int length = arc4random() % RAND_LENGTH + MIN_LENGTH;
    NSString *name = @"";
    for (int i = 0; i < length; i++)
    {
        int gap = UPPER_ALPHABET;
        if (arc4random() % 2 == 0)
        {
            gap = LOWER_ALPHABET;
        }
        
        int randAlphabet = arc4random() % MAX_ALPHABET + gap;
        NSString *alphabet = [NSString stringWithFormat:@"%c", randAlphabet];
        name = [name stringByAppendingString:alphabet];
    }
    
    return name;
    
}

@end

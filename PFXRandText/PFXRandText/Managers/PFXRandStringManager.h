//
//  PFXRandStringManager.h
//  PFXRandText
//
//  Created by succorer on 2016. 1. 15..
//  Copyright © 2016년 succorer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PFXRandStringManager : NSObject

+ (instancetype)sharedRandStringManager;
- (NSString *)createString;


@end

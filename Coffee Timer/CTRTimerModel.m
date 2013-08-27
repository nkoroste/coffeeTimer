//
//  CTRTimerModel.m
//  Coffee Timer
//
//  Created by nick on 2013-08-23.
//  Copyright (c) 2013 nick. All rights reserved.
//

#import "CTRTimerModel.h"

@implementation CTRTimerModel

-(id)initWithCoffeeName:(NSString *)coffeeName duration:(NSInteger)duration
{
    self = [super init];
    if (self == nil) {
        return nil;
    }
    
    self.coffeeName = coffeeName;
    self.duration = duration;
    
    return self;
}

@end

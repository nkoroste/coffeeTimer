//
//  CTRTimerModel.h
//  Coffee Timer
//
//  Created by nick on 2013-08-23.
//  Copyright (c) 2013 nick. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CTRTimerModel : NSObject

@property (nonatomic, strong) NSString *coffeeName;
@property (nonatomic, assign) NSInteger duration;

- (id)initWithCoffeeName:(NSString *)coffeeName duration:(NSInteger)duration;

@end

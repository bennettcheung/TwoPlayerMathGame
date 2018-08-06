//
//  MultiplicationQuestion.m
//  TwoPlayerMathGame
//
//  Created by Bennett on 2018-08-06.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion
- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}


- (void)generateQuestion{
    [super generateQuestion];
    super.question = [NSString stringWithFormat:@"%lu * %lu?", super.leftValue, super.rightValue];
    super.answer = super.leftValue * super.rightValue;
}
@end

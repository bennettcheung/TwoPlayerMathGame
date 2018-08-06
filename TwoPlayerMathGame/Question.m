//
//  Question.m
//  TwoPlayerMathGame
//
//  Created by Bennett on 2018-08-06.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    if (self = [super init]) {
        _startTime = [NSDate date];
        _leftValue = arc4random_uniform(21) + 1;
        _rightValue = arc4random_uniform(21) + 1;
        _question = @"";
        _answer = 0;
    }
    return self;
}

-(void)generateQuestion{
    
}

- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime{
    
    return [self.endTime timeIntervalSinceDate:self.startTime];
}
@end

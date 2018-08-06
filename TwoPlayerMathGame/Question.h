//
//  Question.h
//  TwoPlayerMathGame
//
//  Created by Bennett on 2018-08-06.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject
@property (nonatomic, copy) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;

-(void)generateQuestion;
-(NSTimeInterval)answerTime;
@end

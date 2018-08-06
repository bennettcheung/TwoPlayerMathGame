//
//  QuestionFactory.m
//  TwoPlayerMathGame
//
//  Created by Bennett on 2018-08-06.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

-(id)generateRandomQuestion{
    NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion"];
    
    NSInteger selectionNumber = arc4random_uniform(3);
    NSString *className = questionSubclassNames[selectionNumber];
    
    return [[NSClassFromString(className) alloc]init];
}
@end

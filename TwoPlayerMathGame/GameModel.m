//
//  GameModel.m
//  TwoPlayerMathGame
//
//  Created by Bennett on 2018-08-06.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "GameModel.h"
#import "AdditionQuestion.h"


@interface GameModel()
@property (nonatomic, strong) AdditionQuestion *question;

@end

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _playersArray = @[[Player new],
                          [Player new]];
        _currentPlayer = 0;
        _question = [[AdditionQuestion alloc] init];
        [_question generateQuestion];
    }
    return self;
}

-(NSString*)getQuestion{
    
    return [NSString stringWithFormat:@"Player %li: %@", self.currentPlayer + 1, self.question.question];
}

-(void)changePlayer{
    if (self.currentPlayer == 0)
        self.currentPlayer = 1;
    else
        self.currentPlayer = 0;
}

-(BOOL)checkAnswer:(NSInteger)answer{
    if (self.question.answer == answer)
        return YES;
    return NO;
}

-(NSInteger)getScore{
    Player *player= self.playersArray[self.currentPlayer];
    return player.score;
}
@end

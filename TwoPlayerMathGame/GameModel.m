//
//  GameModel.m
//  TwoPlayerMathGame
//
//  Created by Bennett on 2018-08-06.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "GameModel.h"
#import "Question.h"
#import "QuestionFactory.h"


@interface GameModel()
@property (nonatomic, strong) Question *question;
@property (nonatomic, strong) QuestionFactory *questionFactory;

@end

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _playersArray = @[[Player new],
                          [Player new]];
        _currentPlayer = 0;
        _gameOver = NO;
        
        _questionFactory = [[QuestionFactory alloc] init];
        _question = [_questionFactory generateRandomQuestion];
        
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
    self.question = [_questionFactory generateRandomQuestion];
}

-(BOOL)checkAnswer:(NSInteger)answer{
    BOOL returnValue;
    
    Player *player= self.playersArray[self.currentPlayer];
    if (self.question.answer == answer)
    {
        returnValue = YES;
    }
    else{
        player.life--;
        returnValue = NO;
    }
    
    if (player.life == 0)
        self.gameOver = YES;
    
    return returnValue;
}

-(NSString*)getLife:(NSInteger)playerNumber{
    
    if (playerNumber >=0 && playerNumber <[self.playersArray count])
    {
        Player *player= self.playersArray[playerNumber];
        return [NSString stringWithFormat:@"Player %li: %ld", playerNumber +1, player.life];
    }
    else
        return @"0";
}

-(void)resetGame{
    self.gameOver = NO;
    self.currentPlayer = 0;
    Player *player1 =self.playersArray[0];
    player1.life = 3;
    Player *player2 =self.playersArray[1];
    player2.life = 3;
    [self.question generateQuestion];
}

@end

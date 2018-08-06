//
//  GameModel.h
//  TwoPlayerMathGame
//
//  Created by Bennett on 2018-08-06.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameModel : NSObject

@property (nonatomic, strong) NSArray *playersArray;
@property (nonatomic, assign) NSInteger currentPlayer;
@property (nonatomic, assign) BOOL gameOver;

-(NSString*)getQuestion;
-(BOOL)checkAnswer:(NSInteger)answer;
-(void)changePlayer;
-(NSString*)getLife:(NSInteger)playerNumber;
@end

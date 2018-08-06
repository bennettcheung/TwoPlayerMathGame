//
//  ViewController.m
//  TwoPlayerMathGame
//
//  Created by Bennett on 2018-08-06.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *questionUILabel;
@property (weak, nonatomic) IBOutlet UILabel *player1Score;
@property (weak, nonatomic) IBOutlet UILabel *player2Score;
@property (nonatomic, strong) GameModel *model;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (nonatomic, assign) NSInteger currentAnswer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _model = [[GameModel alloc]init];
    _questionUILabel.text = [_model getQuestion];
    _currentAnswer = 0;
    self.player1Score.text = [self.model getLife:0];
    self.player2Score.text = [self.model getLife:1];
    self.answerLabel.text = [NSString stringWithFormat:@"%ld", (long)_currentAnswer];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submitAnswer:(UIButton *)sender {
    [self.model checkAnswer:self.currentAnswer];
    self.player1Score.text = [self.model getLife:0];
    self.player2Score.text = [self.model getLife:1];
    
    if (self.model.gameOver)
    {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Two Player Math Game" message:@"Game Over!!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
            NSLog(@"You pressed button OK");
        }];
        [alert addAction:defaultAction];
        
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    else{
        self.currentAnswer =0;
        [self updateAnswerLabel];
        [self.model changePlayer];
        self.questionUILabel.text = [self.model getQuestion];
    }
}
-(void)addDigit:(NSInteger)digit{
    self.currentAnswer = (self.currentAnswer * 10) + digit;
}

-(void)updateAnswerLabel{
    self.answerLabel.text = [NSString stringWithFormat:@"%ld", (long)self.currentAnswer];
}

- (IBAction)pressed0:(UIButton *)sender {
    [self addDigit:0];
    [self updateAnswerLabel];
}
- (IBAction)pressed1:(UIButton *)sender {
    [self addDigit:1];
    [self updateAnswerLabel];
}
- (IBAction)pressed2:(UIButton *)sender {
    [self addDigit:2];
    [self updateAnswerLabel];
}
- (IBAction)pressed3:(UIButton *)sender {
    [self addDigit:3];
    [self updateAnswerLabel];
}
- (IBAction)pressed4:(UIButton *)sender {
    [self addDigit:4];
    [self updateAnswerLabel];
}
- (IBAction)pressed5:(UIButton *)sender {
    [self addDigit:5];
    [self updateAnswerLabel];
}
- (IBAction)pressed6:(UIButton *)sender {
    [self addDigit:6];
    [self updateAnswerLabel];
}
- (IBAction)pressed7:(UIButton *)sender {
    [self addDigit:7];
    [self updateAnswerLabel];
}
- (IBAction)pressed8:(UIButton *)sender {
    [self addDigit:8];
    [self updateAnswerLabel];
}
- (IBAction)pressed9:(UIButton *)sender {
    [self addDigit:9];
    [self updateAnswerLabel];
}

@end

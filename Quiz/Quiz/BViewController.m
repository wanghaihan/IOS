//
//  BViewController.m
//  Quiz
//
//  Created by Haihan Wang on 15/8/15.
//  Copyright (c) 2015年 Haihan Wang. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@property (nonatomic) int currentQuestionIndex;
@property (nonatomic,copy) NSArray *questions;
@property (nonatomic,copy) NSArray *answers;

@property (nonatomic,weak) IBOutlet UILabel *questionLabel;
@property (nonatomic,weak) IBOutlet UILabel *answerLabel;

@end

@implementation BViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        self.questions = @[@"question 1",@"question2",@"question3"];
        self.answers = @[@"answer1",@"answer2",@"answer3"];
    }
    return self;
}
- (IBAction)showQuestion:(id)sender {
    if(++self.currentQuestionIndex == [self.questions count]){
        self.currentQuestionIndex = 0;
    }
    NSString *question = self.questions[self.currentQuestionIndex];
    self.questionLabel.text = question;
    self.answerLabel.text = @"???";
    
}

- (IBAction)showAnser:(id)sender
{
    self.answerLabel.text = self.answers[self.currentQuestionIndex];
}







- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

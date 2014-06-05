//
//  QuizViewController.m
//  QuizApp
//
//  Created by David Bloom on 6/4/14.
//  Copyright (c) 2014 David Bloom. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        [questions addObject:@"What time do you leave work?"];
        [answers addObject:@"5:00 PM"];
        
        [questions addObject:@"How many pets do you have?"];
        [answers addObject:@"Two"];
        
        [questions addObject:@"What kind of phone do you have?"];
        [answers addObject:@"iPhone 5s"];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showAnswer:(id)sender {
    
    NSString *answer = [answers objectAtIndex: currentQuestionIndex];
    
    [answerField setText:answer];
    
    
    
}
- (IBAction)showQuestion:(id)sender {
    
    currentQuestionIndex++;
    
    if (currentQuestionIndex == [questions count]){
        currentQuestionIndex = 0;
    }
    
    NSString *question = [questions objectAtIndex: currentQuestionIndex];
    [questionField setText:question];
    [answerField setText:@"???"];
    
    
}

@end

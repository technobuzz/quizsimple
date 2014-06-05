//
//  QuizViewController.h
//  QuizApp
//
//  Created by David Bloom on 6/4/14.
//  Copyright (c) 2014 David Bloom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
   int currentQuestionIndex;

   // the model objects
   NSMutableArray *questions;
   NSMutableArray *answers;
    
   IBOutlet UILabel *questionField;
   IBOutlet UILabel *answerField;

};

- (IBAction) showQuestion : (id) sender;

- (IBAction) showAnswer : (id) sender;

@end

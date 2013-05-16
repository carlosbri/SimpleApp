//
//  ViewController.h
//  SimpleApp
//
//  Created by Carlos Brito on 5/14/13.
//  Copyright (c) 2013 HW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;

@property (copy, nonatomic) NSString *userName;

- (IBAction)changeGreeting:(id)sender;
- (BOOL)textFieldShouldReturn:(UITextField *)textField;

@end

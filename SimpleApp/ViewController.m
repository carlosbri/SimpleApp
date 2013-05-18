//
//  ViewController.m
//  SimpleApp
//
//  Created by Carlos Brito on 5/14/13.
//  Copyright (c) 2013 HW. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//@synthesize userName = _userName;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeGreeting:(id)sender
{
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    
    if([nameString length] == 0)
    {
        nameString = @"World";
    }
    
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    self.label.text = greeting;
    
    [self.textField resignFirstResponder];
    
}


- (BOOL) textFieldShouldReturn:(UITextField *)theTextField
{
    if (theTextField == self.textField)
    {
        [theTextField resignFirstResponder];
    }
    
    return YES;
}


@end

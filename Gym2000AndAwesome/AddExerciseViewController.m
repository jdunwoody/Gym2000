//
//  PickerTestViewControllerViewController.m
//  Gym2000AndAwesome
//
//  Created by James on 10/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddExerciseViewController.h"

@interface AddExerciseViewController ()

@end

@implementation AddExerciseViewController
@synthesize addExerciseViewControllerDelegate = _addExerciseViewControllerDelegate;

@synthesize status = _status;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    self.answerTextField.delegate = self;
//    [_addExerciseButton addTarget:self action:@selector(addExerciseButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    statusValues = [[NSArray alloc] initWithObjects:@"Employed", @"Student", @"Retired", @"Homemaker", @"Self-employed", @"Unemployed", @"Other", nil];
}

//    [UIView beginAnimations:nil context:NULL]; 
////    
////    [UIView setAnimationDuration: 0.7];
////    [UIView setAnimationTransition:<#UIViewAnimationTransitionCurlDown#> forView:self.navigationController.view cache:NO];
////    
////    
////    [self.navigationController popViewControllerAnimated:YES];
////
////     [UIView commitAnimations];


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


// Date picker functions

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    //One column
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if ([pickerView tag] == 1) {
        return statusValues.count;
    }
    return 0;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if ([pickerView tag] == 1) {
    return [statusValues objectAtIndex:row];
    }
    return nil;
}

- (IBAction)addExerciseButton:(id)sender {
    NSString *itemToPassBack = @"Pass this value back to ExerciseTableViewController";
    [self.addExerciseViewControllerDelegate addItemViewController:self didFinishEnteringItem:itemToPassBack];
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end

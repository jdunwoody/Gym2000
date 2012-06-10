//
//  Gym2000ViewController.m
//  Gym2000AndAwesome
//
//  Created by James on 9/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Gym2000ViewController.h"
#import "ExerciseCell.h"

@interface Gym2000ViewController ()

@end

@implementation Gym2000ViewController

//@synthesize exercise = _exercise;
@synthesize dataController = _dataController;

- (void)viewDidLoad
{
    [super viewDidLoad];

    exercises = [[NSArray alloc] initWithObjects:@"Push up", @"Sit up", @"Burpee", @"Star jump", @"Bicup curls", @"Squats", @"Other", nil];
    bodyPart = [[NSArray alloc] initWithObjects:@"Bicep", @"Tricep", @"Shoulder", @"Abs", @"Thigh", @"Hamstring", @"Calf", nil];

    NSMutableArray *repsTemp = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < 20; i++) {
        [repsTemp addObject:[NSString stringWithFormat:@"%d", i]];
    }
    for (NSUInteger i = 25; i <= 50; i+=5) {
        [repsTemp addObject:[NSString stringWithFormat:@"%d", i]];
    }
    
    reps = [NSArray arrayWithArray:repsTemp];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

// Table functions

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataController countOfList];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ExerciseCell";
    ExerciseCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    NSString *valueAtIndex = [self.dataController objectInListAtIndex:indexPath.row];
    
    [[cell exerciseLabel] setText:valueAtIndex];
    
    [[cell exercisePicker] setDelegate:self];
    [[cell exercisePicker] setDataSource:self];

    [[cell repsPicker] setDelegate:self];
    [[cell repsPicker] setDataSource:self];

    [[cell bodyPartPicker] setDelegate:self];
    [[cell bodyPartPicker] setDataSource:self];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return NO;
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
        return exercises.count;
    } else if ([pickerView tag] == 2) {
        return reps.count;
    } else if ([pickerView tag] == 3) {
        return bodyPart.count;
    }
    return 0;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if ([pickerView tag] == 1) {
        return [exercises objectAtIndex:row];
    } else if ([pickerView tag] == 2) {
        return [reps objectAtIndex:row];
    } else if ([pickerView tag] == 3) {
        return [bodyPart objectAtIndex:row];
    }
    return nil;
}

@end





//    static NSDateFormatter *formatter = nil;
//    
//    if (formatter == nil) {
//        formatter = [[NSDateFormatter alloc] init];
//        [formatter setDateStyle:NSDateFormatterMediumStyle];
//    }
//    

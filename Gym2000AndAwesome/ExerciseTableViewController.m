//
//  Gym2000ViewController.m
//  Gym2000AndAwesome
//
//  Created by James on 9/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ExerciseTableViewController.h"
#import "ExerciseCell.h"
#import "InactiveExerciseCell.h"
#import "Exercise.h"
#import "PickerTestViewController.h"

@interface ExerciseTableViewController ()

@end

@implementation ExerciseTableViewController

//@synthesize exercise = _exercise;
@synthesize dataController = _dataController;

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.slideNavigationViewController.delegate = self;
    self.slideNavigationViewController.dataSource = self;

//    self.slideNavigationController.panEnabled = YES;
    
//    [self.view addSubview:tableViewController.tableView];
    
//    exercises = [[NSArray alloc] initWithObjects:@"Push up", @"Sit up", @"Burpee", @"Star jump", @"Bicup curls", @"Squats", @"Other", nil];
//    bodyPart = [[NSArray alloc] initWithObjects:@"Bicep", @"Tricep", @"Shoulder", @"Abs", @"Thigh", @"Hamstring", @"Calf", nil];
//
//    NSMutableArray *repsTemp = [[NSMutableArray alloc] init];
//    
//    for (NSUInteger i = 0; i < 20; i++) {
//        [repsTemp addObject:[NSString stringWithFormat:@"%d", i]];
//    }
//    for (NSUInteger i = 25; i <= 50; i+=5) {
//        [repsTemp addObject:[NSString stringWithFormat:@"%d", i]];
//    }
//    
//    reps = [NSArray arrayWithArray:repsTemp];
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

// MW Slider Stuff
//
//- (IBAction) showEditStuff:(id)sender
//{
//    [self.slideNavigationViewController slideWithDirection:MWFSlideDirectionRight];
//}
//
//- (IBAction) hideEditStuff:(id)sender
//{
//    [self.slideNavigationViewController slideWithDirection:MWFSlideDirectionNone];
//}
//
//- (NSInteger) slideNavigationViewController:(MWFSlideNavigationViewController *)controller 
//                   distanceForSlideDirecton:(MWFSlideDirection)direction 
//                        portraitOrientation:(BOOL)portraitOrientation
//{
//    if (portraitOrientation)
//    {
//        return 180;
//    }
//    else
//    {
//        return 100;
//    }
//}
//
//- (UIViewController *) slideNavigationViewController:(MWFSlideNavigationViewController *)controller 
//                      viewControllerForSlideDirecton:(MWFSlideDirection)direction
//{
//    [self performSegueWithIdentifier:@"AddExercise" sender:self];
//    
////    PickerTestViewController * menuCtl = ...; // alloc and init your controller
//    return nil; //menuCtl;
//}

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
//    NSIndexPath *selectedIndex = [tableView indexPathForSelectedRow];
    
//    if (indexPath.row == 0) {
//        static NSString *CellIdentifier = @"CurrentExerciseCell";
//        ExerciseCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//        
//        NSString *valueAtIndex = [self.dataController objectInListAtIndex:indexPath.row];
//        
//        [[cell exerciseLabel] setText:valueAtIndex];
//        
//        [[cell exercisePicker] setDelegate:self];
//        [[cell exercisePicker] setDataSource:self];
//        
//        return cell;    
//        
//    } else {
        static NSString *CellIdentifier = @"InactiveExerciseCell";
        id c = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        InactiveExerciseCell *cell = c;
        Exercise *exercise = [self.dataController objectInListAtIndex:indexPath.row];
        
        [[cell category] setText: exercise.category];
        [[cell name] setText: exercise.name];
//        [[cell reps] setText: [NSString stringWithFormat:@"%d" exercise.reps]];
//        [[cell bodyPart] setText: exercise.bodyPart];
    
//        [cell sizeToFit];
//        cell.backgroundColor = [UIColor redColor];
//        cell.backgroundColor = [UIColor colorWithRed:172.0/255.0 green:173.0/255.0 blue:175.0/255.0 alpha:1.0];
//        [tableView selectRowAtIndexPath:indexPath animated:NO scrollPosition:UITableViewScrollPositionTop]
        
//        [[cell exercisePicker] setDelegate:self];
//        [[cell exercisePicker] setDataSource:self];
//        
        
        return cell;
//    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath 
{
//    if (indexPath.row == 0) {
//        return tableView.rowHeight;
//    } else {
        return 62;
//    }
        
}

// [pickerView reloadComponent]

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

// Date picker functions

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 3;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    switch (component) {
        case 2:
            return bodyPart.count;
        case 1:
            return reps.count;
        case 0:
        default:
            return exercises.count;
    }
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    switch (component) {
        case 2:
            return [bodyPart objectAtIndex:row];
        case 1:
            return[reps objectAtIndex:row];
        case 0:
        default:
            return [exercises objectAtIndex:row];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender 
{
    if ([segue.identifier isEqualToString:@"AddExercise"]) {
        
//        PickerTestViewController *asker = (PickerTestViewController *) segue.destinationViewController;
//        asker.delegate = self;
        
//        asker.question = @"What do you want your label to say?";
//        
//        asker.answer = @"Label text";
        
        
    }

//    
//    NSUInteger row = indexPath.row;
//    if (row != NSNotFound)
//    {
//        // Create the view controller and initialize it with the
//        // next level of data.
//        MyViewController *viewController = [[MyViewController alloc]
//                                            initWithTable:tableView andDataAtIndexPath:indexPath];
//        [[self navigationController] pushViewController:viewController
//                                               animated:YES];
//    }
    
}

@end

//- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
//{
//    if (view != nil) {
//        return view;
//    }
//    UIView *a,*b,*c;
//    
//    switch (component) {
//        case 2:
//            a = [bodyPart objectAtIndex:row];
//            return [bodyPart objectAtIndex:row];
//        case 1:
//            b =[reps objectAtIndex:row];
//            return [reps objectAtIndex:row];
//        case 0:
//        default:
//            c= [exercises objectAtIndex:row];
//            
//            return [exercises objectAtIndex:row];
//    } 
//}
//@end
//    static NSDateFormatter *formatter = nil;
//    
//    if (formatter == nil) {
//        formatter = [[NSDateFormatter alloc] init];
//        [formatter setDateStyle:NSDateFormatterMediumStyle];
//    }
//    

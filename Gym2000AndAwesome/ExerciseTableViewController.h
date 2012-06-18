//
//  Gym2000ViewController.h
//  Gym2000AndAwesome
//
//  Created by James on 9/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ExerciseDataController.h"
#import "AddExerciseViewController.h"

@interface ExerciseTableViewController : UITableViewController <UIPickerViewDataSource, UIPickerViewDelegate, AddExerciseViewControllerDelegate> {
    UIPickerView *exercisePicker;
    NSArray *exercises;
    NSMutableArray *reps;
    NSMutableArray *sets;
    NSMutableArray *weight;
    NSArray *bodyPart;
    NSArray *intensity;
    NSMutableArray *rest;
}

@property (strong, nonatomic) ExerciseDataController *dataController;
//@property (nonatomic, strong) IBOutlet UIPickerView *exercise;

@end


//}, MWFSlideNavigationViewControllerDelegate, MWFSlideNavigationViewControllerDataSource> {

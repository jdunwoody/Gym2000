//
//  Gym2000ViewController.h
//  Gym2000AndAwesome
//
//  Created by James on 9/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ExerciseDataController.h"
#import "MWFSlideNavigationViewController.h"

@interface ExerciseTableViewController : UITableViewController <UIPickerViewDataSource, UIPickerViewDelegate, MWFSlideNavigationViewControllerDelegate, MWFSlideNavigationViewControllerDataSource> {
    UIPickerView *exercisePicker;
    NSArray *exercises;
    NSArray *reps;
    NSArray *bodyPart;
}

@property (strong, nonatomic) ExerciseDataController *dataController;
//@property (nonatomic, strong) IBOutlet UIPickerView *exercise;

@end

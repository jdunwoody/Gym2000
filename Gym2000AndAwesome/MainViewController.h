//
//  MainViewControllerViewController.h
//  Gym2000AndAwesome
//
//  Created by James on 15/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ExerciseTableViewController.h"

@interface MainViewController : UIViewController
@property (strong, nonatomic) IBOutlet ExerciseTableViewController *tableViewController;
//@property (strong, nonatomic) IBOutlet *tableViewController;

@end

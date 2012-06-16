//
//  PickerTestViewControllerViewController.h
//  Gym2000AndAwesome
//
//  Created by James on 10/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerTestViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
    UIPickerView *status;   
    NSArray *statusValues;
}
@property (nonatomic, strong) IBOutlet UIPickerView *status;
@property (nonatomic, strong) IBOutlet UIButton *addExerciseButton;

@end

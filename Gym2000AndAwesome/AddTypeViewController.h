//
//  PickerTestViewControllerViewController.h
//  Gym2000AndAwesome
//
//  Created by James on 10/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AddTypeViewController;

@protocol AddExerciseViewControllerDelegate <NSObject>
- (void)addItemViewController:(AddTypeViewController *)controller didFinishEnteringItem:(NSString *)item;
@end

@interface AddTypeViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
    UIPickerView *status;   
    NSArray *statusValues;
}

@property (nonatomic, strong) IBOutlet UIPickerView *status;
@property (nonatomic, weak) id <AddExerciseViewControllerDelegate> addExerciseViewControllerDelegate;

- (IBAction)addTypeButton:(id)sender;
- (IBAction)addBodyPartButton:(id)sender;

@end

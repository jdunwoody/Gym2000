//
//  ExerciseDataController.m
//  Gym2000AndAwesome
//
//  Created by James on 10/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ExerciseDataController.h"
#import "Exercise.h"

@implementation ExerciseDataController

@synthesize exercises = _exercises;

- (id)init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
    }
    return self;
}

- (void)initializeDefaultDataList {
    
    self.exercises = [[NSMutableArray alloc] init];
    
    Exercise *exercise = [[Exercise alloc] init];
    exercise.category = @"Individual";
    exercise.name = @"Air Squat";
    [self.exercises addObject:exercise];
   
    exercise = [[Exercise alloc] init];
    exercise.category = @"Super set";
    exercise.name = @"Push up";
    [self.exercises addObject:exercise];
    
    
//    NSMutableArray *exerciseList = [[NSMutableArray alloc] initWithObjects:@"Push up", @"Sit up", @"Burpee", @"Star jump", @"Bicup curls", @"Squats", @"Other", nil];
//    self.exercises = exerciseList;
  
//    NSMutableArray *exerciseList = [[NSMutableArray alloc] init];
//  
//    [exerciseList addObject: [Exercise in
//    self.exercises = exerciseList;
    
//    [self.exercises addObject: @"Push up", @"Sit up", @"Burpee", @"Star jump", @"Bicup curls", @"Squats", @"Other"];
}

- (void)setExercises:(NSMutableArray *)newList {
    if(_exercises != newList) {
        _exercises = [newList mutableCopy];
    }
}

- (NSUInteger)countOfList {
    return [self.exercises count];
}

- (Exercise *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.exercises objectAtIndex:theIndex];
}

@end

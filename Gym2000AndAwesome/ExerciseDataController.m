//
//  ExerciseDataController.m
//  Gym2000AndAwesome
//
//  Created by James on 10/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ExerciseDataController.h"

@implementation ExerciseDataController

@synthesize exercises = _exercises;

- (id)init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
    }
    return self;
}

- (void)initializeDefaultDataList {
    NSMutableArray *exerciseList = [[NSMutableArray alloc] initWithObjects:@"Push up", @"Sit up", @"Burpee", @"Star jump", @"Bicup curls", @"Squats", @"Other", nil];
    self.exercises = exerciseList;
    
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

- (NSString *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.exercises objectAtIndex:theIndex];
}

@end

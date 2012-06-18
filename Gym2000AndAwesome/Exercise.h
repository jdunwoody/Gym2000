//
//  Exercise.h
//  Gym2000AndAwesome
//
//  Created by James on 11/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Exercise : NSObject 
    @property NSString *name;
    @property NSInteger *reps;
    @property NSInteger *sets;
    @property NSArray *weights;
    @property NSString *type;
    @property NSString *category;
    @property NSString *restBetween;
    @property BOOL isAdd;
    
//    - (id)initWithLabel: (NSString *)label;

@end

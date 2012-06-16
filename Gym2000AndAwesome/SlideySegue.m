//
//  SlideySegue.m
//  Gym2000AndAwesome
//
//  Created by James on 15/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SlideySegue.h"

@implementation SlideySegue
@synthesize segue = _segue;

-(void) perform{
    [[[self sourceViewController] navigationController] pushViewController:[self destinationViewController] animated:YES];
}
@end



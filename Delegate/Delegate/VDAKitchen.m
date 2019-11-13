//
//  VDAKitchen.m
//  Delegate
//
//  Created by Дарья Витер on 13/11/2019.
//  Copyright © 2019 Viter. All rights reserved.
//

#import "VDAKitchen.h"

@implementation VDAKitchen

- (void)prepareFoodFrom:(VDAWaiter *)waiter
{
	NSLog(@"Food will be prepare");
	[self foodIsReady];
}

- (NSString *)foodIsReady
{
	NSLog(@"Food is ready!");
	_waiter.isKitchenCookedFood = YES;
	return @"OK";
}

@end

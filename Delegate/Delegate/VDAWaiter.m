//
//  VDAWaiter.m
//  Delegate
//
//  Created by Дарья Витер on 13/11/2019.
//  Copyright © 2019 Viter. All rights reserved.
//

#import "VDAWaiter.h"

@implementation VDAWaiter

- (void)brigFoodTo:(VDAGuest *)guest
{
	NSLog(@"OK, I will be in the moment!");
	[_delegate prepareFoodFrom:self];
	if (self.isKitchenCookedFood) {
		NSLog(@"food on table");
		[self foodIsOnTable];
		_guest.isFoodReady = YES;
	}
}

- (void)foodIsOnTable
{
	NSLog(@"Here your food! Bon appetit!");
}

@end

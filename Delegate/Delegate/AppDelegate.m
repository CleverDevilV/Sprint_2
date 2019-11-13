//
//  AppDelegate.m
//  Delegate
//
//  Created by Дарья Витер on 13/11/2019.
//  Copyright © 2019 Viter. All rights reserved.
//

#import "AppDelegate.h"
#import "VDAGuest.h"
#import "VDAWaiter.h"
#import "VDAKitchen.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	
	VDAGuest *guest = [VDAGuest new];
	VDAWaiter *waiter = [VDAWaiter new];
	VDAKitchen *kitchen = [VDAKitchen new];
	
	guest.delegate = waiter;
	waiter.delegate = kitchen;
	waiter.guest = guest;
	kitchen.waiter = waiter;
	
	[guest makeOrder];
	if (guest.isFoodReady) {
		NSLog(@"Thank you!");
	}
	
	return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
	// Called when a new scene session is being created.
	// Use this method to select a configuration to create the new scene with.
	return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
	// Called when the user discards a scene session.
	// If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
	// Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end

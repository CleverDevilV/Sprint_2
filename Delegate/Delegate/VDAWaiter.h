//
//  VDAWaiter.h
//  Delegate
//
//  Created by Дарья Витер on 13/11/2019.
//  Copyright © 2019 Viter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VDAGuest.h"

NS_ASSUME_NONNULL_BEGIN
@class VDAWaiter;
@protocol WaiterDelegate <NSObject>

-(void) prepareFoodFrom: (VDAWaiter *) waiter;

@end

@interface VDAWaiter : NSObject <GuestDelegate>

@property (weak, nonatomic) VDAGuest *guest;
@property (strong, nonatomic) id <WaiterDelegate> delegate;
@property (nonatomic) BOOL isKitchenCookedFood;

@end

NS_ASSUME_NONNULL_END

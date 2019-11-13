//
//  VDAKitchen.h
//  Delegate
//
//  Created by Дарья Витер on 13/11/2019.
//  Copyright © 2019 Viter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VDAWaiter.h"

NS_ASSUME_NONNULL_BEGIN

@interface VDAKitchen : NSObject <WaiterDelegate>

@property (weak, nonatomic) VDAWaiter *waiter;

@end

NS_ASSUME_NONNULL_END

//
//  VDAGuest.h
//  Delegate
//
//  Created by Дарья Витер on 13/11/2019.
//  Copyright © 2019 Viter. All rights reserved.
//

#import <Foundation/Foundation.h>

//@protocol EventDelegate
//
//-(void) didFinishEvent: (NSString *) str;
//
//@end


NS_ASSUME_NONNULL_BEGIN

@class VDAGuest;
@protocol GuestDelegate <NSObject>

-(void) brigFoodTo: (VDAGuest *) guest;
-(void) foodIsOnTable;

@end

@interface VDAGuest : NSObject

@property (strong, nonatomic) id <GuestDelegate> delegate;
@property (nonatomic) BOOL isFoodReady;

-(void) makeOrder;

@end

NS_ASSUME_NONNULL_END

//
//  WTViewController.h
//  WatchTracker
//
//  Created by Cole Bratcher on 7/26/14.
//  Copyright (c) 2014 WatchTracker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WTStatusBubble.h"

@interface WTWithMeViewController : UIViewController

@property (nonatomic, strong) WTItem *laptop;
@property (nonatomic, strong) WTItem *keys;
@property (nonatomic, strong) WTItem *glasses;
@property (nonatomic, strong) WTItem *wallet;
@property (nonatomic, strong) WTItem *baby;

@end

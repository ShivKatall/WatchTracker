//
//  WTStatusBubble.h
//  WatchTracker
//
//  Created by Cole Bratcher on 7/26/14.
//  Copyright (c) 2014 WatchTracker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WTItem.h"

@interface WTStatusBubble : UIButton

@property (nonatomic, strong) WTItem *item;

-(void)assignItemToBubble:(WTItem *)item;
-(void)refreshBubble;

@end

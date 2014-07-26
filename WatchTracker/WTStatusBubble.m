//
//  WTStatusBubble.m
//  WatchTracker
//
//  Created by Cole Bratcher on 7/26/14.
//  Copyright (c) 2014 WatchTracker. All rights reserved.
//

#import "WTStatusBubble.h"

@implementation WTStatusBubble

-(void)assignItemToBubble:(WTItem *)item {
    _item = item;
    
    [self refreshBubble];
}

-(void)refreshBubble {
    [self setTitle:(_item.name) forState:UIControlStateNormal];
    
    if (_item.active == YES) {
        if (_item.withMe == YES) {
            [self setBackgroundImage:[UIImage imageNamed:@"button_blank_green_01"]
                            forState:UIControlStateNormal];
        } else if (_item.withMe == NO) {
            [self setBackgroundImage:[UIImage imageNamed:@"button_blank_red_01"]
                            forState:UIControlStateNormal];
        }
    } else {
        [self setBackgroundImage:[UIImage imageNamed:@"button_blank_blue_01"]
                        forState:UIControlStateNormal];
    }
}

@end

//
//  WTItem.h
//  WatchTracker
//
//  Created by Cole Bratcher on 7/26/14.
//  Copyright (c) 2014 WatchTracker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WTConstants.h"

@interface WTItem : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) BOOL active;
@property (nonatomic) BOOL withMe;
@property (nonatomic) Importance importance;
@property (nonatomic) Notification notification;
@property (nonatomic) UIImage *itemImage;

-(id)initWithName:(NSString*)name
     activeStatus:(BOOL)active
     withMeStatus:(BOOL)withMe
 importanceStatus:(Importance)importance
notificationStatus:(Notification)notification
        itemImage:(UIImage*)image;

@end


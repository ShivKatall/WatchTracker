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
<<<<<<< HEAD
@property (nonatomic) UIImage *itemImage;
=======
>>>>>>> 2f32c379650d36b143d02bd7a00aefa931b17fda

-(id)initWithName:(NSString*)name
     activeStatus:(BOOL)active
     withMeStatus:(BOOL)withMe
 importanceStatus:(Importance)importance
<<<<<<< HEAD
notificationStatus:(Notification)notification
        itemImage:(UIImage*)image;
=======
notificationStatus:(Notification)notification;
>>>>>>> 2f32c379650d36b143d02bd7a00aefa931b17fda

@end


//
//  WTItem.m
//  WatchTracker
//
//  Created by Cole Bratcher on 7/26/14.
//  Copyright (c) 2014 WatchTracker. All rights reserved.
//

#import "WTItem.h"

@implementation WTItem

-(id)initWithName:(NSString*)name
     activeStatus:(BOOL)active
     withMeStatus:(BOOL)withMe
 importanceStatus:(Importance)importance
<<<<<<< HEAD
notificationStatus:(Notification)notification
        itemImage:(UIImage*)image; {
=======
notificationStatus:(Notification)notification; {
>>>>>>> 2f32c379650d36b143d02bd7a00aefa931b17fda
    
    self = [super init];
    
    if (self) {
        self.name = name;
        self.active = active;
        self.withMe = withMe;
        self.importance = importance;
        self.notification = notification;
<<<<<<< HEAD
        self.itemImage = image;
=======
>>>>>>> 2f32c379650d36b143d02bd7a00aefa931b17fda
    }
    return self;
}

@end

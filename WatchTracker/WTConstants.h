//
//  WTConstants.h
//  WatchTracker
//
//  Created by Cole Bratcher on 7/26/14.
//  Copyright (c) 2014 WatchTracker. All rights reserved.
//

#ifndef WatchTracker_ConstantsFile_h
#define WatchTracker_ConstantsFile_h

typedef enum : NSUInteger {
    High,
    Medium,
    Low,
} Importance;

typedef enum : NSUInteger {
    TextMessage,
    PushNotification,
    None,
} Notification;

#endif

//
//  WTItemSettingsViewController.m
//  WatchTracker
//
//  Created by Cole Bratcher on 7/26/14.
//  Copyright (c) 2014 WatchTracker. All rights reserved.
//

#import "WTItemSettingsViewController.h"
#import "WTStatusBubble.h"


@interface WTItemSettingsViewController ()

@property (weak, nonatomic) IBOutlet WTStatusBubble *statusBubble;
@property (weak, nonatomic) IBOutlet UISegmentedControl *activeSwitch;
@property (weak, nonatomic) IBOutlet UISegmentedControl *importanceSwitch;
@property (weak, nonatomic) IBOutlet UISegmentedControl *notificationSwitch;

@end

@implementation WTItemSettingsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [_statusBubble assignItemToBubble:_item];
    [self setActiveSwitchStatus];
    [self setImportanceSwitchStatus];
    [self setNotificationSwitchStatus];   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - Model Control Code

-(void)setActiveSwitchStatus
{
    if (_item.active == YES) {
        [_activeSwitch setSelectedSegmentIndex:0];
    } else {
        [_activeSwitch setSelectedSegmentIndex:1];
    }
}

-(void)setImportanceSwitchStatus
{
    if (_item.importance == High) {
        [_importanceSwitch setSelectedSegmentIndex:0];
    } else if (_item.importance == Low) {
        [_importanceSwitch setSelectedSegmentIndex:2];
    } else {
        [_importanceSwitch setSelectedSegmentIndex:1];
    }
}

-(void)setNotificationSwitchStatus
{
    if (_item.notification == TextMessage) {
        [_notificationSwitch setSelectedSegmentIndex:0];
    } else if (_item.notification == PushNotification) {
        [_notificationSwitch setSelectedSegmentIndex:1];
    } else {
        [_notificationSwitch setSelectedSegmentIndex:2];
    }
}

@end

//
//  WTItemSettingsViewController.m
//  WatchTracker
//
//  Created by Cole Bratcher on 7/26/14.
//  Copyright (c) 2014 WatchTracker. All rights reserved.
//

#import "WTItemSettingsViewController.h"
#import "WTWithMeViewController.h"
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

-(void)viewWillDisappear:(BOOL)animated
{
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"SaveSegue"]) {
        WTWithMeViewController *destinationViewController = [segue destinationViewController];
        
        [self getActiveSwitchStatus];
        [self getImportanceSwitchStatus];
        [self getNotificationSwitchStatus];
        
        destinationViewController.laptop = _item;
    }
}

# pragma mark - Model Control Code

// Set Status

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


// Get Status

-(void)getActiveSwitchStatus
{
    if (_activeSwitch.selectedSegmentIndex == 0) {
        _item.active = YES;
    } else {
        _item.active = NO;
    }
}

-(void)getImportanceSwitchStatus
{
    if (_importanceSwitch.selectedSegmentIndex == 0) {
        _item.importance = High;
    } else if (_importanceSwitch.selectedSegmentIndex == 1) {
        _item.importance = Medium;
    } else {
        _item.importance = Low;
    }
}

-(void)getNotificationSwitchStatus
{
    if (_notificationSwitch.selectedSegmentIndex == 0) {
        _item.notification = TextMessage;
    } else if (_notificationSwitch.selectedSegmentIndex == 1) {
        _item.notification = PushNotification;
    } else {
        _item.notification = None;
    }
}

-(void)selectPhotos:(id)sender{
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:picker animated:YES completion:NULL];
}




@end

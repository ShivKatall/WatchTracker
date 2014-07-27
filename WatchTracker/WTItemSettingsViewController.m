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
@property (weak, nonatomic) IBOutlet UISegmentedControl *notificationSwitch;

@end

@implementation WTItemSettingsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [[UINavigationBar appearance] setBackIndicatorImage:[UIImage imageNamed:@"back-button-image"]];
    [[UINavigationBar appearance] setBackIndicatorTransitionMaskImage:[UIImage imageNamed:@"back-button-image"]];
    
    
    
    [_statusBubble assignItemToBubble:_item];

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
        
        [self getNotificationSwitchStatus];
        
        destinationViewController.laptop = _item;
    }
}

# pragma mark - Model Control Code

// Set Status

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

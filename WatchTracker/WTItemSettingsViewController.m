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

<<<<<<< HEAD
@property (weak, nonatomic) IBOutlet UIButton *onButton;
@property (weak, nonatomic) IBOutlet UIButton *offButton;

@end


=======
@property (weak, nonatomic) IBOutlet WTStatusBubble *statusBubble;
@property (weak, nonatomic) IBOutlet UISegmentedControl *notificationSwitch;

@end

>>>>>>> 2f32c379650d36b143d02bd7a00aefa931b17fda
@implementation WTItemSettingsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Ran");
    [[UINavigationBar appearance] setBackIndicatorImage:[UIImage imageNamed:@"Back arrow"]];
    [[UINavigationBar appearance] setBackIndicatorTransitionMaskImage:[UIImage imageNamed:@"Back arrow"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

<<<<<<< HEAD
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    if (_item.active == YES) {
        _onButton.selected = YES;
        _offButton.selected = NO;
    } else {
        _onButton.selected = NO;
        _offButton.selected = YES;
    }
    
    if(_item.itemImage != nil){
    [_itemImage setBackgroundImage: _item.itemImage forState:UIControlStateNormal];
    }

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"saveExitSegue"]) {
        WTWithMeViewController *destinationViewController = [segue destinationViewController];
        destinationViewController.laptop.itemImage = _image;
        NSLog(@"@%",((NSString*)_image));
        destinationViewController.laptop = _item;
        
    }
}

#pragma mark - Active Status Code

- (IBAction)onButtonPressed:(id)sender {
    _item.active = YES;
    _onButton.selected = YES;
    _offButton.selected = NO;
}

- (IBAction)offButtonPressed:(id)sender {
    _item.active = NO;
    _offButton.selected = YES;
    _onButton.selected = NO;
}




- (IBAction)selectPhotos:(id)sender {
=======
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
>>>>>>> 2f32c379650d36b143d02bd7a00aefa931b17fda
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:picker animated:YES completion:NULL];
}

<<<<<<< HEAD
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    _image = info[UIImagePickerControllerEditedImage];
    [_itemImage setBackgroundImage: _image forState:UIControlStateNormal];
    _item.itemImage = _image;
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}
=======



>>>>>>> 2f32c379650d36b143d02bd7a00aefa931b17fda
@end

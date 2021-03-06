//
//  WTViewController.m
//  WatchTracker
//
//  Created by Cole Bratcher on 7/26/14.
//  Copyright (c) 2014 WatchTracker. All rights reserved.
//

#import "WTWithMeViewController.h"
#import "WTItem.h"
#import "WTDemoItems.h"
#import "WTItemSettingsViewController.h"


@interface WTWithMeViewController ()

@property (weak, nonatomic) IBOutlet WTStatusBubble *buttonOne;
@property (weak, nonatomic) IBOutlet WTStatusBubble *buttonTwo;
@property (weak, nonatomic) IBOutlet WTStatusBubble *buttonThree;
@property (weak, nonatomic) IBOutlet WTStatusBubble *buttonFour;
@property (weak, nonatomic) IBOutlet WTStatusBubble *buttonFive;

@end

@implementation WTWithMeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _camera = [[WTItem alloc] initWithName:@"Camera"
                                     activeStatus:YES
                                     withMeStatus:YES
                                 importanceStatus:Low
                               notificationStatus:None
               itemImage:nil
               ];
    
    _keys = [[WTItem alloc] initWithName:@"Keys"
                                   activeStatus:YES
                                   withMeStatus:YES
                               importanceStatus:Medium
                             notificationStatus:PushNotification
             itemImage:nil];
    
    _glasses = [[WTItem alloc] initWithName:@"Glasses"
                                      activeStatus:NO
                                      withMeStatus:NO
                                  importanceStatus:Low
                                notificationStatus:None
                itemImage:nil];
    
    _wallet = [[WTItem alloc] initWithName:@"Wallet"
                                     activeStatus:YES
                                     withMeStatus:NO
                                 importanceStatus:Medium
                               notificationStatus:PushNotification
               itemImage:nil];
    
    _baby = [[WTItem alloc] initWithName:@"Baby"
                                   activeStatus:YES
                                   withMeStatus:NO
                               importanceStatus:High
                             notificationStatus:TextMessage
             itemImage:nil];
    


}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [_buttonOne assignItemToBubble:_camera];
    [_buttonTwo assignItemToBubble:_keys];
    [_buttonThree assignItemToBubble:_glasses];
    [_buttonFour assignItemToBubble:_wallet];
    [_buttonFive assignItemToBubble:_baby];
    
}



-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"BubbleDetailSegue"]) {
        WTItemSettingsViewController *destinationViewController = [segue destinationViewController];
        
        destinationViewController.item = _camera;
    }
}

#pragma mark - Empty Segue Methods

-(IBAction)backExitSegue:(UIStoryboardSegue *)sender
{
    // Empty method for Exit Segue functionality.
}

-(IBAction)saveExitSegue:(UIStoryboardSegue *)sender
{
    // Empty method for Exit Segue functionality.
}

@end

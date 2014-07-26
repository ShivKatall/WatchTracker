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
#import "WTStatusBubble.h"
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
    
    WTItem *laptop = [[WTItem alloc] initWithName:@"Laptop"
                                     activeStatus:YES
                                     withMeStatus:NO
                                 importanceStatus:High
                               notificationStatus:TextMessage];
    
    WTItem *keys = [[WTItem alloc] initWithName:@"Keys"
                                   activeStatus:YES
                                   withMeStatus:YES
                               importanceStatus:Medium
                             notificationStatus:PushNotification];
    
    WTItem *glasses = [[WTItem alloc] initWithName:@"Glasses"
                                      activeStatus:NO
                                      withMeStatus:NO
                                  importanceStatus:Low
                                notificationStatus:None];
    
    WTItem *wallet = [[WTItem alloc] initWithName:@"Wallet"
                                     activeStatus:YES
                                     withMeStatus:NO
                                 importanceStatus:Medium
                               notificationStatus:PushNotification];
    
    WTItem *baby = [[WTItem alloc] initWithName:@"Baby"
                                   activeStatus:YES
                                   withMeStatus:NO
                               importanceStatus:High
                             notificationStatus:TextMessage];
    
    [_buttonOne assignItemToBubble:laptop];
    [_buttonTwo assignItemToBubble:keys];
    [_buttonThree assignItemToBubble:glasses];
    [_buttonFour assignItemToBubble:wallet];
    [_buttonFive assignItemToBubble:baby];

}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
}



-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"BubbleDetailSegue"]) {
        WTItemSettingsViewController *destinationViewController = [segue destinationViewController];
        
        destinationViewController.item = _buttonOne.item;
    }
    
}

@end

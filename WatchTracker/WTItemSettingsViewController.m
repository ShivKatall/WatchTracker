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

@property (weak, nonatomic) IBOutlet UIButton *onButton;
@property (weak, nonatomic) IBOutlet UIButton *offButton;

@end


@implementation WTItemSettingsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [[UINavigationBar appearance] setBackIndicatorImage:[UIImage imageNamed:@"Back arrow"]];
    [[UINavigationBar appearance] setBackIndicatorTransitionMaskImage:[UIImage imageNamed:@"Back arrow"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"saveExitSegue"]) {
        WTWithMeViewController *destinationViewController = [segue destinationViewController];

        destinationViewController.camera = _item;
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




@end

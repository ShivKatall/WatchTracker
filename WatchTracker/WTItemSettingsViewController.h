//
//  WTItemSettingsViewController.h
//  WatchTracker
//
//  Created by Cole Bratcher on 7/26/14.
//  Copyright (c) 2014 WatchTracker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WTItem.h"


@interface WTItemSettingsViewController : UIViewController <UINavigationBarDelegate>
- (IBAction)selectPhotos:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *itemImage;
@property(strong , nonatomic)UIImage *image;
@property (nonatomic, strong) WTItem *item;

@end

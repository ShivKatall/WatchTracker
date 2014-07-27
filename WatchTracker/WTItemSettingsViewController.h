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


@property (nonatomic, strong) WTItem *item;
- (IBAction)selectPhotos:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *itemImage;

@property (nonatomic, strong)UIImagePickerController *imagePicker;
@property (nonatomic, strong)UIImage *image;



@end

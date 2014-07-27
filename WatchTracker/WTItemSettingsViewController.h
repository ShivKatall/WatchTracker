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
<<<<<<< HEAD
- (IBAction)selectPhotos:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *itemImage;

@property (nonatomic, strong) WTItem *item;
@property (nonatomic , strong)UIImage *image; 
=======


@property (nonatomic, strong) WTItem *item;
- (IBAction)selectPhotos:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *itemImage;

@property (nonatomic, strong)UIImagePickerController *imagePicker;
@property (nonatomic, strong)UIImage *image;



>>>>>>> 2f32c379650d36b143d02bd7a00aefa931b17fda
@end

//
//  CameraViewController.h
//  WatchTracker
//
//  Created by John Nguyen on 7/26/14.
//  Copyright (c) 2014 WatchTracker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CameraViewController : UIViewController

@property (nonatomic, strong)UIImagePickerController *imagePicker;
@property (nonatomic, strong)UIImage *image;

@end

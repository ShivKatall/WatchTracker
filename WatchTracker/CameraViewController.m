//
//  CameraViewController.m
//  WatchTracker
//
//  Created by John Nguyen on 7/26/14.
//  Copyright (c) 2014 WatchTracker. All rights reserved.
//

#import "CameraViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>

@interface CameraViewController ()

@end

@implementation CameraViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
    if(self.image ==nil ){
        
        
        self.imagePicker = [[UIImagePickerController alloc]init];
        self.imagePicker.allowsEditing = NO;
        
        if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]){
            self.imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        }else{
            self.imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        }
        
        self.imagePicker.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:self.imagePicker.sourceType];
        
        [self presentViewController:self.imagePicker animated:NO completion:nil];
    }
}

-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    NSString *mediaType = [info objectForKey:UIImagePickerControllerMediaType];
    
    if([mediaType isEqualToString:(NSString *)kUTTypeImage]){
        //A photo was taken or selected
        self.image = [info objectForKey:UIImagePickerControllerOriginalImage];
        if(self.imagePicker.sourceType == UIImagePickerControllerSourceTypeCamera ){
            UIImageWriteToSavedPhotosAlbum(self.image, nil, nil, nil);
        }
        
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)send:(id)sender {
    if(self.image == nil){
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Try Again!" message:@"Please capture or select a video or photo to share" delegate:self cancelButtonTitle:@"K " otherButtonTitles:nil];
        
        [alertView show];
        
        [self presentViewController:self.imagePicker animated:NO completion:nil];
    }else{
       
        
        [self.tabBarController setSelectedIndex:0];
    }
}




@end

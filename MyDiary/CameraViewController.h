//
//  CameraViewController.h
//  MyDiary
//
//  Created by chenchen on 13-9-14.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Diary.h"

@class CameraViewController;
@protocol CameraViewControllerDelegate
-(void) cameraViewControllerDidReturn:(CameraViewController *)cameraViewController;

@end

@interface CameraViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>
- (IBAction)takePicture:(id)sender;
- (IBAction)doDismiss:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *picutre;
@property (strong, nonatomic) Diary *diary;
@property (weak, nonatomic) id<CameraViewControllerDelegate> delegate;

@end

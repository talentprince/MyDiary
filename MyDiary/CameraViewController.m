//
//  CameraViewController.m
//  MyDiary
//
//  Created by chenchen on 13-9-14.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import "CameraViewController.h"
#import "ImageStore.h"

@interface CameraViewController ()

@end

@implementation CameraViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)takePicture:(id)sender {
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc]init];
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        [imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
    }else {
        [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    }
    [imagePicker setDelegate:self];
    [self presentViewController:imagePicker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    NSString *oldPhotoKey = [self.diary photoKey];
    if(oldPhotoKey) {
        [[ImageStore defaultImageStore] deleteImageForKey:oldPhotoKey];
    }
    
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    CFUUIDRef newUniqueID = CFUUIDCreate(kCFAllocatorDefault);
    CFStringRef newUniqueIDString = CFUUIDCreateString(kCFAllocatorDefault, newUniqueID);
    [self.diary setPhotoKey:(__bridge NSString *)newUniqueIDString];
    
    CFRelease(newUniqueIDString);
    CFRelease(newUniqueID);
    [[ImageStore defaultImageStore] setImage:image forKey:[self.diary photoKey]];
    
    [self.picutre setImage:image];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)doDismiss:(id)sender {
    [self.delegate cameraViewControllerDidReturn:self];
}
@end

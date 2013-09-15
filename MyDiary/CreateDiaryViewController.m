//
//  CreateDiaryViewController.m
//  MyDiary
//
//  Created by chenchen on 13-9-8.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import "CreateDiaryViewController.h"

@interface CreateDiaryViewController ()

@end

@implementation CreateDiaryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"TakePicture"]) {
        CameraViewController *cameraViewController = (CameraViewController *)[segue destinationViewController];
        cameraViewController.delegate = self;
        cameraViewController.diary = self.diary;
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.diary = [[Diary alloc] init];
    
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy年M月d日 'at' h:mm a"];
    NSString *date = [df stringFromDate:[NSDate date]];
    self.diaryDate.text = date;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)cancel:(id)sender {
    [self.delegate createDiaryViewControllerDidCancel:self];
}

- (IBAction)saveDiary:(id)sender {
    self.diary.title = self.diaryTitle.text;
    self.diary.content = self.diaryContent.text;
    
    [self.delegate createDiaryViewController:self didSaveWithDiary:self.diary];
}

-(void)cameraViewControllerDidReturn:(CameraViewController *)cameraViewController
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end

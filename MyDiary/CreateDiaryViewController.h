//
//  CreateDiaryViewController.h
//  MyDiary
//
//  Created by chenchen on 13-9-8.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Diary.h"
#import "CameraViewController.h"

@class CreateDiaryViewController;

@protocol CreateDiaryViewControllerDelegate
@required
-(void) createDiaryViewControllerDidCancel:(CreateDiaryViewController *)createDiaryController;
-(void) createDiaryViewController:(CreateDiaryViewController *)createDiaryController
                 didSaveWithDiary:(Diary *)theDiary;
@end

@interface CreateDiaryViewController : UIViewController <UITextFieldDelegate, CameraViewControllerDelegate>

@property (weak, nonatomic) id <CreateDiaryViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UILabel *diaryDate;
@property (weak, nonatomic) IBOutlet UITextField *diaryTitle;
@property (weak, nonatomic) IBOutlet UITextView *diaryContent;
@property (strong, nonatomic) Diary *diary;

- (IBAction)cancel:(id)sender;
- (IBAction)saveDiary:(id)sender;

@end

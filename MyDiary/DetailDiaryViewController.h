//
//  DetailDiaryViewController.h
//  MyDiary
//
//  Created by chenchen on 13-9-8.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Diary.h"

@interface DetailDiaryViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *diaryTitle;
@property (weak, nonatomic) IBOutlet UITextView *diaryContent;
@property (strong, nonatomic) Diary *diary;

@end

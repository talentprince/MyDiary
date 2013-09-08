//
//  DiaryListViewController.h
//  MyDiary
//
//  Created by chenchen on 13-9-8.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateDiaryViewController.h"

@interface DiaryListViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate, CreateDiaryViewControllerDelegate>

@property (nonatomic, strong) NSArray *diaries;

@end

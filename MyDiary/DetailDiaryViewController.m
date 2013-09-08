//
//  DetailDiaryViewController.m
//  MyDiary
//
//  Created by chenchen on 13-9-8.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import "DetailDiaryViewController.h"

@interface DetailDiaryViewController ()

@end

@implementation DetailDiaryViewController

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

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.diaryTitle.text = self.diary.title;
    self.diaryContent.text = self.diary.content;
    
    [[self navigationItem] setTitle:@"日记内容"];
}
@end

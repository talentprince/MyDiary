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

- (IBAction)cancel:(id)sender {
    [self.delegate createDiaryViewControllerDidCancel:self];
}

- (IBAction)saveDIary:(id)sender {
    [self.delegate createDiaryViewController:self didSaveWithDiary:nil];
}
@end

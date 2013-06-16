//
//  ViewController.m
//  MyDiary
//
//  Created by chenchen on 13-6-16.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor yellowColor]];
    
    CGRect frame = CGRectMake(10, 170, 300, 50);
    
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    
    label.text = @"Welcom to iOS";
    label.textColor = [UIColor redColor];
    
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

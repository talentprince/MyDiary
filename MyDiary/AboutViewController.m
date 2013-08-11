//
//  ViewController.m
//  MyDiary
//
//  Created by chenchen on 13-6-16.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    switch (self.aboutSegment.selectedSegmentIndex) {
        case 0:
            self.hello.text = @"King of The World Internathional";
            self.slogan.text = @"Rock Rock Rock You";
            self.infoImage.image = [UIImage imageNamed:@"company.png"];
            break;
        case 1:
            self.hello.text = @"Welcom Welcom!";
            self.slogan.text = @"What can I do you for";
            self.infoImage.image = [UIImage imageNamed:@"logo.png"];
        default:
            break;
    }
    self.hello.text = @"King of The World Internathional";
    self.slogan.text = @"Rock Rock Rock You";
    self.infoImage.image = [UIImage imageNamed:@"company.png"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segmentChanged:(id)sender
{
    int value = [(UISegmentedControl*)sender selectedSegmentIndex];
    
    switch (value) {
        case 0:
            self.hello.text = @"King of The World Internathional";
            self.slogan.text = @"Rock Rock Rock You";
            self.infoImage.image = [UIImage imageNamed:@"company.png"];
            break;
        case 1:
            self.hello.text = @"Welcom Welcom!";
            self.slogan.text = @"What can I do you for";
            self.infoImage.image = [UIImage imageNamed:@"logo.png"];
        default:
            break;
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    
}

- (void)viewDidAppear:(BOOL)animated
{
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    
}

- (void)viewDidDisappear:(BOOL)animated
{
    
}


@end

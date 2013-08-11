//
//  ViewController.h
//  MyDiary
//
//  Created by chenchen on 13-6-16.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *hello;
@property (weak, nonatomic) IBOutlet UILabel *slogan;
@property (weak, nonatomic) IBOutlet UIImageView *infoImage;
@property (weak, nonatomic) IBOutlet UISegmentedControl *aboutSegment;

- (IBAction)segmentChanged:(id)sender;

@end

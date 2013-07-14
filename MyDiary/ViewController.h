//
//  ViewController.h
//  MyDiary
//
//  Created by chenchen on 13-6-16.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *slogan;
@property (weak, nonatomic) IBOutlet UIImageView *headImage;
@property (weak, nonatomic) IBOutlet UISegmentedControl *authorCompany;

- (IBAction)segmentChanged:(id)sender;

@end

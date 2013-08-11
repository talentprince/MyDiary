//
//  LocationViewController.m
//  MyDiary
//
//  Created by chenchen on 13-8-11.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import "LocationViewController.h"

@interface LocationViewController ()

@end

@implementation LocationViewController

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
    
    if([CLLocationManager locationServicesEnabled]) {
        switch ([CLLocationManager authorizationStatus]) {
            case kCLAuthorizationStatusAuthorized:
            case kCLAuthorizationStatusNotDetermined:
                self.loctionManager = [[CLLocationManager alloc] init];
                self.loctionManager.delegate = self;
                [self.loctionManager setDistanceFilter:kCLDistanceFilterNone];
                [self.loctionManager setDesiredAccuracy:kCLLocationAccuracyBest];
                [self.loctionManager startUpdatingLocation];
                break;
            case kCLAuthorizationStatusDenied:
                NSLog(@"定位服务禁止了");
                break;
            case kCLAuthorizationStatusRestricted:
                NSLog(@"家长控制限制啦");
                break;
            default:
                break;
        }
    }else{
        NSLog(@"系统定位被禁止了");
    }
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateLocations:(NSArray *)locations
{
    CLLocation *location = (CLLocation *)[locations objectAtIndex:0];
    NSLog(@"%@",location);
}

@end

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
                self.mapView = [[MAMapView alloc] initWithFrame:CGRectMake(0, 0, 320, 578)];
                self.mapView.mapType = MAMapTypeStandard;
                self.mapView.delegate = self;
                
                if(self.mapView) {
                    CLLocationCoordinate2D center = {39.91669,116.39716};
                    MACoordinateSpan span = {0.04,0.03};
                    MACoordinateRegion region = {center,span};
                    [self.mapView setRegion:region animated:NO];
                    [self.view addSubview:self.mapView];
                }
//                [self.mapView setShowsUserLocation:YES];
//                [self.view addSubview:self.mapView];
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

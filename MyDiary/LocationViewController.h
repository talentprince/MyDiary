//
//  LocationViewController.h
//  MyDiary
//
//  Created by chenchen on 13-8-11.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface LocationViewController : UIViewController<CLLocationManagerDelegate>

@property (nonatomic, strong) CLLocationManager *loctionManager;
@property (readonly, nonatomic) CLLocationCoordinate2D coordinate;

@end

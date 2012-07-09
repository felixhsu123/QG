//
//  CZViewController.m
//  CZGZ
//
//  Created by Lion User on 08/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CZViewController.h"
#import "CZMapViewDelegate.h"
#import "CZWareHouseAnnotation.h"
#import "CZLorryAnnotation.h"

@interface CZViewController ()

@end

@implementation CZViewController
@synthesize mapView;
@synthesize mapViewDelegate=_mapViewDelegate;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIViewController * top = [self.storyboard instantiateViewControllerWithIdentifier:@"topbar"];
    [self addChildViewController:top];
    [self.view addSubview:top.view];
    
    UIViewController * bottom = [self.storyboard instantiateViewControllerWithIdentifier:@"bottombar"];
    [self addChildViewController:bottom];
    [self.view addSubview:bottom.view];
    
    self.mapViewDelegate = [[CZMapViewDelegate alloc] init];
    self.mapView.delegate = self.mapViewDelegate;
    
    NSString * fullpath = [[NSBundle mainBundle] pathForResource:@"WareHouseData" ofType:@"plist"];
    NSDictionary *dictionary = [[NSDictionary alloc] initWithContentsOfFile:fullpath];
    [dictionary enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop){
        NSDictionary * prop = (NSDictionary *)obj;
        NSNumber * latitude = [prop objectForKey:@"纬度"];
        NSNumber * longitude = [prop objectForKey:@"经度"];
        CZWareHouseAnnotation * annotation = [[CZWareHouseAnnotation alloc] init];
        annotation.coordinate = CLLocationCoordinate2DMake(latitude.doubleValue, longitude.doubleValue);
        annotation.title = key;
        [self.mapView addAnnotation:annotation];
        [self.mapView selectAnnotation:annotation animated:NO];
    }];
    
    // 初始化annotation
    CZLorryAnnotation * lannotation = [[CZLorryAnnotation alloc] init];
    lannotation.coordinate = CLLocationCoordinate2DMake(31.191200,121.350000);
    [self.mapView addAnnotation:lannotation];
}

- (void)viewDidUnload
{
    self.mapView.delegate = nil;
    self.mapViewDelegate = nil;
    [self setMapView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    for (int i=0; i<self.childViewControllers.count; i++) {
        UIViewController * uc = [self.childViewControllers objectAtIndex:i];
        [uc shouldAutorotateToInterfaceOrientation:interfaceOrientation];
    }
    
    if(interfaceOrientation == UIDeviceOrientationLandscapeRight || interfaceOrientation == UIDeviceOrientationLandscapeLeft){
        self.mapView.frame = CGRectMake(0, 0, 1024, 748);
    }else{
        self.mapView.frame = CGRectMake(0, 0, 768, 1004);
    }
    
    return YES;
}

@end

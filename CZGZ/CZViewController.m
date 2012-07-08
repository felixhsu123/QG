//
//  CZViewController.m
//  CZGZ
//
//  Created by Lion User on 08/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CZViewController.h"

@interface CZViewController ()

@end

@implementation CZViewController
@synthesize mapView;

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
}

- (void)viewDidUnload
{
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

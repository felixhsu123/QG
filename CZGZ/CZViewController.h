//
//  CZViewController.h
//  CZGZ
//
//  Created by Lion User on 08/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@class CZMapViewDelegate;

@interface CZViewController : UIViewController
@property (nonatomic, strong) CZMapViewDelegate * mapViewDelegate;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@end

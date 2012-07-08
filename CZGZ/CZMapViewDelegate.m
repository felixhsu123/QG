//
//  CZMapViewDelegate.m
//  CZGZ
//
//  Created by Lion User on 08/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CZMapViewDelegate.h"
#import "CZWareHouseAnnotationView.h"

@implementation CZMapViewDelegate

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id < MKAnnotation >)annotation
{
    static NSString * warehouseId = @"WareHouse";
    MKAnnotationView * annotationView = [mapView dequeueReusableAnnotationViewWithIdentifier:warehouseId];
    if (!annotationView) {
        annotationView = [[CZWareHouseAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:warehouseId];
    }
    
    [annotationView addSubview:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"house.png"]]];
    CGRect frame = annotationView.frame;
    frame.size.width = 32;
    frame.size.height = 32;
    annotationView.frame = frame;
    return annotationView;
}

@end

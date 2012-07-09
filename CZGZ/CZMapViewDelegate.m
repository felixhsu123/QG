//
//  CZMapViewDelegate.m
//  CZGZ
//
//  Created by Lion User on 08/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CZMapViewDelegate.h"
#import "CZWareHouseAnnotationView.h"
#import "CZLorryAnnotationView.h"
#import "CZWareHouseAnnotation.h"
#import "CZLorryAnnotation.h"

@implementation CZMapViewDelegate

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id < MKAnnotation >)annotation
{
    static NSString * identifier = nil;
    
    if ([annotation isKindOfClass:[CZWareHouseAnnotation class]]) {
        identifier = @"WareHouse";
        MKAnnotationView * annotationView = [mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
        if (!annotationView) {
            annotationView = [[CZWareHouseAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
        }
        
        return annotationView;
    } else if ([annotation isKindOfClass:[CZLorryAnnotation class]]) {
        identifier = @"Lorry";
        MKAnnotationView * annotationView = [mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
        if (!annotationView) {
            annotationView = [[CZLorryAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
        }
        
        return annotationView;
    }
    
    return nil;
}

@end

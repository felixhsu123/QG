//
//  CZWareHouseAnnotation.h
//  CZGZ
//
//  Created by Lion User on 08/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface CZWareHouseAnnotation : NSObject <MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString * title;

- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate;

@end

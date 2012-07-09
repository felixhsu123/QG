//
//  CZWareHouseAnnotation.m
//  CZGZ
//
//  Created by Lion User on 08/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CZWareHouseAnnotation.h"

@implementation CZWareHouseAnnotation
@synthesize coordinate=_coordinate, title=_title;

- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate
{
    _coordinate = newCoordinate;
}

- (void)dealloc
{
    self.title = nil;
}

@end

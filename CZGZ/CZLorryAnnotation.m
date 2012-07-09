//
//  CZLorryAnnotation.m
//  CZGZ
//
//  Created by Lion User on 09/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CZLorryAnnotation.h"
#import "CZTool.h"

@implementation CZLorryAnnotation
@synthesize coordinate=_coordinate, title=_title;

- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate
{
    _coordinate = newCoordinate;

    self.title = [NSString stringWithFormat:@"距离<31.195366,121.382103>至少%.3f公里", [CZTool distanceFrom:newCoordinate to:CLLocationCoordinate2DMake(31.195366,121.382103)]];
}

- (void)dealloc
{
    self.title = nil;
}

@end

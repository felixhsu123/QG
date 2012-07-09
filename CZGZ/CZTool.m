//
//  CZTool.m
//  CZGZ
//
//  Created by Lion User on 08/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CZTool.h"
#import <Math.h>

@implementation CZTool

+ (double)distanceFrom: (CLLocationCoordinate2D)coordinate1 to: (CLLocationCoordinate2D)coordinate2
{
    double earth_r = 6378.137;
    double a = (coordinate1.latitude - coordinate2.latitude) * M_PI / 180;
    double b = (coordinate1.longitude - coordinate2.longitude) * M_PI / 180;
    
    double result = 2 * asin(sqrt(pow(sin(a/2), 2) + cos(coordinate1.latitude*M_PI/180) * cos(coordinate2.latitude*M_PI/180) * pow(sin(b/2), 2))) * earth_r;
    
    return result;
}

+ (double)rateFor:(CLLocationCoordinate2D)coordinate0 from:(CLLocationCoordinate2D)coordinate1 to:(CLLocationCoordinate2D)coordinate2
{
    return 0;
}

@end

//
//  CZWareHouseAnnotationView.m
//  CZGZ
//
//  Created by Lion User on 08/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CZWareHouseAnnotationView.h"

@implementation CZWareHouseAnnotationView

- (id)initWithAnnotation:(id<MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
    if (self) {
        self.image = [UIImage imageNamed:@"house.png"];
        self.canShowCallout = YES;
    }
    return self;
}

@end

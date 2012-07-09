//
//  CZLorryAnnotationView.m
//  CZGZ
//
//  Created by Lion User on 09/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CZLorryAnnotationView.h"

@implementation CZLorryAnnotationView

- (id)initWithAnnotation:(id<MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
    if (self) {
        self.image = [UIImage imageNamed:@"lorry.png"];
        self.canShowCallout = YES;
    }
    return self;
}

@end

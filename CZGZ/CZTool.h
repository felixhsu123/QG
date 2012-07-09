#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface CZTool : NSObject

// 计算2个经纬度之间的距离，计算结果的单位时公里  leitianbo      
+ (double)distanceFrom: (CLLocationCoordinate2D)coordinate1 to: (CLLocationCoordinate2D)coordinate2;

@end

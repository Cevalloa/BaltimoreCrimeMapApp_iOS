//
//  MyLocation.h
//  Baltimore Data
//
//  Created by Alex Cevallos on 6/16/14.
//  Copyright (c) 2014 AlexCevallos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MyLocation : NSObject <MKAnnotation>

//Copy means this copies the object and returns a retain count of 1
//(you own the object)
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *address;

@property (nonatomic) CLLocationCoordinate2D theCoordinate;

-(id)initWithName:(NSString *)name address:(NSString *)address coordinate:(CLLocationCoordinate2D)coordinate;
-(MKMapItem*)mapItem;

@end

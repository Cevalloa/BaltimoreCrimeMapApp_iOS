//
//  MyLocation.m
//  Baltimore Data
//
//  Created by Alex Cevallos on 6/16/14.
//  Copyright (c) 2014 AlexCevallos. All rights reserved.
//

#import "MyLocation.h"
#import <AddressBook/AddressBook.h>

@implementation MyLocation

-(id)initWithName:(NSString *)name address:(NSString *)address coordinate:(CLLocationCoordinate2D)coordinate{
    if ((self = [super init])){
        //checks if this is a kind of NSString class
        if ([name isKindOfClass:[NSString class]]){
            self.name = name;
        }else {
            self.name = @"Unknown charge";
        }
        self.address = address;
        self.theCoordinate = coordinate;
    }
    
    return self;
}

//Just showing the unsynthesized version
-(NSString *)title{
    return _name;
}

-(NSString *)subtitle{
    return _address;
}

-(CLLocationCoordinate2D)coordinate {
    return _theCoordinate;
}

-(MKMapItem *)mapItem{
    NSDictionary *addressDict = @{(NSString*)kABPersonAddressStreetKey : _address};
    
    MKPlacemark *placemark = [[MKPlacemark alloc]
                              initWithCoordinate:self.coordinate
                              addressDictionary:addressDict];
    
    MKMapItem *mapItem = [[MKMapItem alloc] initWithPlacemark:placemark];
    mapItem.name = self.title;
    
    return mapItem;
}
@end

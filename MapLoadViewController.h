//
//  MapLoadViewController.h
//  GeoTest
//
//  Created by Andrew Bennie on 6/12/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapLoadViewController : UITableViewController

@property (strong, nonatomic) NSArray *mapLocations;

-(void) openInAppleMaps: (id) sender;


@end

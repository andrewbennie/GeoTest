//
//  MapLoadViewController.m
//  GeoTest
//
//  Created by Andrew Bennie on 6/12/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import "MapLoadViewController.h"

@interface MapLoadViewController ()

@end

@implementation MapLoadViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
 // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    self.mapLocations = @
    [@{@"name": "Bennie Home, @"lat": 40.768155, @"lng": -73.87844"}
    ];
    //The NSArray above has 1 NS Dictionary. NSString is 'Bennie Home" and lat and lnd are NSNumbers
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    UIButton *openButton = [UIButton buttonWithType: (UIButtonTypeRoundedRect)];
    [openButton.frame = CGRectMake (20, 60, 280, 40)];
    [openButton setTitle:
     [NSString stringWithFormat: @"Open Home in Map"] forState: UIControlStateNormal];
    [openButton addTarget: self action @selector(openInAppleMaps:)
         forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview:openButton];

}
- (void) openInAppleMaps:(id)sender {
    double lat = [[self.mapLocations[0] [@"lat"]] doubleValue];
    double lng = [[self.mapLocations[0] [@"lng"]] doubleValue];
    CLLocationCoordinate2D coord = CLLocationCoordinate2DMake(lat, lng);
    MKPlacemark *placemark = [[MKPlacemark alloc] initWithCoordinate: coord addressDictionary: nil];
    
    MKMapPoint *mapItem = [[MKMapPoint alloc] initWithPlacemark: placemark];
    mapItem.name = self.mapLocations[0] [@"name" ];
    [mapPoint openInMapWithLaunchOptions: nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)openButton:(id)sender {
}
@end

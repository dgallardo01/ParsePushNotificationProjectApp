//
//  ViewController.m
//  Parse Push Notification App
//
//  Created by Danny on 7/5/14.
//  Copyright (c) 2014 Danny. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>

@interface ViewController ()
- (IBAction)pushNotificationButtonTapped:(id)sender;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushNotificationButtonTapped:(id)sender {
    
    //Create Installation Query
    PFQuery *pushQuery = [PFInstallation query];
    [pushQuery whereKey:@"deviceType" equalTo:@"ios"];
    
    //Send push notification to query
    [PFPush sendPushMessageToQueryInBackground:pushQuery withMessage:@"Hello World!"];
}
@end

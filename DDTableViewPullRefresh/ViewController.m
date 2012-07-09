//
//  ViewController.m
//  DDTableViewPullRefresh
//
//  Created by Dody Wicaksono on 09/07/2012.
//  Copyright (c) 2012 dodyrw.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // set tableview rect
    self.tableView.frame = CGRectMake(0, 45, 320, 370);
    
    [self.refreshHeaderView setLastRefreshDate:nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark -
#pragma mark PullToRefresh

- (void) refreshFinish
{
    NSLog(@"Pull to refresh finish");
    
    self.tableView.userInteractionEnabled = YES;
    [self.tableView reloadData];    
    
    [super performSelector:@selector(dataSourceDidFinishLoadingNewData) withObject:nil afterDelay:2.0];
}

- (void) refreshStart
{
    self.tableView.userInteractionEnabled = NO;
    
    // do something here
    NSLog(@"Pull to refresh start");
    
    [self refreshFinish];
}
     

- (void)reloadTableViewDataSource
{
	//  should be calling your tableviews model to reload
	[super performSelector:@selector(refreshStart) withObject:nil afterDelay:0.2];
	
}

- (void)dataSourceDidFinishLoadingNewData
{
	[refreshHeaderView setCurrentDate];  //  should check if data reload was successful 
	
	[super dataSourceDidFinishLoadingNewData];
}


@end

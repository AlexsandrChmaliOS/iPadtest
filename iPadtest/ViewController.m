//
//  ViewController.m
//  iPadtest
//
//  Created by Sanya on 22.10.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"
#import "DetailsViewController.h"
#import "SplitViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    tableView = [[TableViewController alloc] init];
    derailsView = [[DetailsViewController alloc] init];
    splitView = [[SplitViewController alloc]init];
    splitView.viewControllers = [NSArray arrayWithObjects:tableView,derailsView, nil];

    splitView.delegate = self;

    self.view = splitView.view;
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}
- (BOOL)splitViewController:(UISplitViewController *)svc shouldHideViewController:(UIViewController *)vc inOrientation:(UIInterfaceOrientation)orientation
{
    if(orientation == UIInterfaceOrientationPortrait)
    {
      return YES;
    }
    if(orientation == UIInterfaceOrientationLandscapeLeft)
    {
        [splitView setValue:[NSNumber numberWithFloat:500.0] forKey:@"_masterColumnWidth"];
        return NO;
    }
    return NO;

}
@end

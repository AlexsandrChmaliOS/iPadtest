//
//  ViewController.h
//  iPadtest
//
//  Created by Sanya on 22.10.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DetailsViewController;
@class TableViewController;
@class SplitViewController;

@interface ViewController : UIViewController<UISplitViewControllerDelegate>
{
    TableViewController* tableView;
    DetailsViewController* derailsView;
    SplitViewController* splitView;
}
@end

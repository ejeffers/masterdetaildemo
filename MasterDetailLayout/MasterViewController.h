//
//  MasterViewController.h
//  MasterDetailLayout
//
//  Created by Eric Jeffers on 5/1/20.
//  Copyright © 2020 Eric Jeffers. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;


@end


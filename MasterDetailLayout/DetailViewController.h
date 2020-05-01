//
//  DetailViewController.h
//  MasterDetailLayout
//
//  Created by Eric Jeffers on 5/1/20.
//  Copyright © 2020 Eric Jeffers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end


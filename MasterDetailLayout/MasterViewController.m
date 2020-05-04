//
//  MasterViewController.m
//  MasterDetailLayout
//
//  Created by Eric Jeffers on 5/1/20.
//  Copyright © 2020 Eric Jeffers. All rights reserved.
//

#import "MasterViewController.h"

#import <MasterDetailLayout-Swift.h>

#import "GCMissionTableViewCell.h"
#import "AppDelegate.h"


@interface MasterViewController ()

@property NSMutableArray *objects;

@property (readonly) NSArray *missionsArray;

@end

@implementation MasterViewController

- (NSArray *)missionsArray
{
    // EJ: dirty way to get out mock data
    return ((AppDelegate *)(UIApplication.sharedApplication.delegate)).missionsArray;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.clearsSelectionOnViewWillAppear = YES;
    
    [self.tableView registerClass:GCMissionTableViewCell.class forCellReuseIdentifier:@"MissionCell"];
    self.tableView.estimatedRowHeight = 200;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDate *object = self.objects[indexPath.row];
        DetailViewController *controller = (DetailViewController *)[[segue destinationViewController] topViewController];
    
        self.detailViewController = controller;
    }
}

#pragma mark - Table View


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.missionsArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    GCMissionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MissionCell" forIndexPath:indexPath];
    
    [cell updateWithMission:self.missionsArray[indexPath.row]];
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *detailsViewController = [[[MissionDetailInterface alloc] init] makeMissionDetailUIWithObjCmission:self.missionsArray[indexPath.row]];
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil];
    [self.navigationController pushViewController:detailsViewController animated:YES];
}

@end

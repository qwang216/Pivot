//
//  PivotFeedTableViewController.m
//  Pivot
//
//  Created by Lauren Caponong on 10/31/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import "PivotFeedTableViewController.h"
#import "PivotFeedTableViewCell.h"
#import "PivotTechieProfileViewController.h"
#import "Dataset.h"
#import <ChameleonFramework/Chameleon.h>
#import "QuartzCore/QuartzCore.h"


@interface PivotFeedTableViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic) Dataset *tableViewData;


@end

@implementation PivotFeedTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.tableViewData = [[Dataset alloc] initWithUsers];
    
    UINib *nib = [UINib nibWithNibName:@"PivotFeedTableViewCell" bundle:nil];
    
    [self.tableView registerNib:nib forCellReuseIdentifier:@"PivotFeedCellID"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.tableViewData.users count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    PivotFeedTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PivotTVCID" forIndexPath:indexPath];
    
    User *currentUser = self.tableViewData.users[indexPath.row];
    
    cell.pivotImageView.image = currentUser.picture;
    cell.jobLabel.text = [NSString stringWithFormat:@"%@, %@", currentUser.name, currentUser.profession];
    
    
    
    for (int i = 0; i < [currentUser.events count]; i++) {
        
        Event *event = currentUser.events[i];
        
        if (event.pivotPoint) {
            cell.pivotPoint.text = event.details;
        }
    }
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    PivotTechieProfileViewController *profileVC = [segue destinationViewController];
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    profileVC.user = self.tableViewData.users[indexPath.row];
    
}


@end

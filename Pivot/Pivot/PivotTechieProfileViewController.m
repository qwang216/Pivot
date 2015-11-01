//
//  PivotTechieProfileViewController.m
//  Pivot
//
//  Created by Jason Wang on 10/31/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import "PivotTechieProfileViewController.h"
#import "PivotTechieProfileDetailViewController.h"
#import "Event.h"
#import "TimelineLeftTableViewCell.h"
#import "TimelineRightTableViewCell.h"
#import <ChameleonFramework/Chameleon.h>

@interface PivotTechieProfileViewController () <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UIImageView *profileImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *educationLabel;
@property (strong, nonatomic) IBOutlet UILabel *professionLabel;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation PivotTechieProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.profileImageView.image = self.user.picture;
    self.nameLabel.text = self.user.name;
    if (self.user.education.school == nil) {
        self.educationLabel.text = @"Institution: N/A";
    } else {
    self.educationLabel.text = [NSString stringWithFormat:@"%@ - %@", self.user.education.school, self.user.education.degreeType];
    }
    self.professionLabel.text = self.user.profession;
    
    
     [self.tableView setSeparatorColor:[UIColor clearColor]];
    
}


#pragma mark - UITableViewDataSource 
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.user.events.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 
   
    if (indexPath.row % 2) {
        TimelineLeftTableViewCell *leftCell = [tableView dequeueReusableCellWithIdentifier:@"PivotProfileLeftTVCID" forIndexPath:indexPath];
        leftCell.yearLabel.text = self.user.events[indexPath.row].year;
        leftCell.headlineLabel.text = self.user.events[indexPath.row].headline;
        leftCell.yearView.layer.cornerRadius = 45;
        leftCell.yearView.layer.masksToBounds = YES;
        
        return leftCell;
    } else {
        
        TimelineRightTableViewCell *rightCell = [tableView dequeueReusableCellWithIdentifier:@"PivotProfileRightTVCID" forIndexPath:indexPath];
        rightCell.yearLabel.text = self.user.events[indexPath.row].year;
        rightCell.headlineLabel.text = self.user.events[indexPath.row].headline;
        rightCell.yearView.layer.cornerRadius = 45;
        rightCell.yearView.layer.masksToBounds = YES;
        return rightCell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    PivotTechieProfileDetailViewController *profileDetailVC = [segue destinationViewController];
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    profileDetailVC.event = self.user.events[indexPath.row];
    
}
@end

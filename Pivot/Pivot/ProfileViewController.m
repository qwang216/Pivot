//
//  ProfileViewController.m
//  Pivot
//
//  Created by Lauren Caponong on 10/31/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import "ProfileViewController.h"
#import "SharedManager.h"
#import "User.h"
#import <ChameleonFramework/Chameleon.h>
#import "TimelineLeftTableViewCell.h"
#import "TimelineRightTableViewCell.h"
#import "ProfileDetailViewController.h"

@interface ProfileViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *profileImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *educationLabel;
@property (strong, nonatomic) IBOutlet UILabel *professionLabel;
@property (weak, nonatomic) IBOutlet UITableView *profileTimelineTableView;
@property (nonatomic) User *user;

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.profileTimelineTableView.dataSource = self;
    self.profileTimelineTableView.delegate = self;
    self.user = [SharedManager sharedModel].user;
    
    
    self.nameLabel.text = self.user.name;
    self.educationLabel.text = [NSString stringWithFormat:@"%@ - %@", self.user.education.school,self.user.education.degreeType];
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    
    ProfileDetailViewController *profileDetailVC = [segue destinationViewController];
    
    NSIndexPath *indexPath = [self.profileTimelineTableView indexPathForSelectedRow];
    
    profileDetailVC.event = self.user.events[indexPath.row];
    
}
@end

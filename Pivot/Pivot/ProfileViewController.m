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
#import "AddExperienceViewController.h"

@interface ProfileViewController ()<UITableViewDataSource, UITableViewDelegate, AddExperienceViewControllerDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *profileImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *educationLabel;
@property (strong, nonatomic) IBOutlet UILabel *professionLabel;
@property (weak, nonatomic) IBOutlet UITableView *profileTimelineTableView;
@property (nonatomic) User *user;

@property (nonatomic) NSMutableArray *myArray;

@property (nonatomic) Event *event;

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.profileTimelineTableView.dataSource = self;
    self.profileTimelineTableView.delegate = self;
    self.user = [SharedManager sharedModel].user;
    
    self.myArray = [NSMutableArray new];
    
    self.user.events = [NSMutableArray new];
    
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
    return self.myArray.count;
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
//    if (indexPath.row % 2) {
        TimelineLeftTableViewCell *leftCell = [tableView dequeueReusableCellWithIdentifier:@"PivotProfileLeftTVCID" forIndexPath:indexPath];
        Event *event = self.myArray[indexPath.row];
        leftCell.yearLabel2.text = event.year;
        leftCell.headLineLabel2.text = event.headline;
        leftCell.yearView.layer.cornerRadius = 45;
        leftCell.yearView.layer.masksToBounds = YES;
        
        return leftCell;
////    } else {
//    
//        TimelineRightTableViewCell *rightCell = [tableView dequeueReusableCellWithIdentifier:@"PivotProfileRightTVCID" forIndexPath:indexPath];
//        Event *event = self.myArray[indexPath.row];
//        rightCell.yearLabel.text = event.year;
//        rightCell.headlineLabel.text = event.headline;
//        rightCell.yearView.layer.cornerRadius = 45;
//        rightCell.yearView.layer.masksToBounds = YES;
//        return rightCell;
//    //}
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"addExperienceSegue"] ) {
        AddExperienceViewController *experienceVC = [segue destinationViewController];
        experienceVC.delegate = self;
        
    } else {
    ProfileDetailViewController *profileDetailVC = [segue destinationViewController];
    
    NSIndexPath *indexPath = [self.profileTimelineTableView indexPathForSelectedRow];
    
    profileDetailVC.event = self.user.events[indexPath.row];
    }
    
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.profileTimelineTableView reloadData];
}

-(void)didAddExperienceWithEvent:(Event *)event {
    
    [self.myArray addObject:event];
//    
//    if (indexPath.row % 2) {
//        TimelineLeftTableViewCell *leftCell = [self.profileTimelineTableView dequeueReusableCellWithIdentifier:@"PivotProfileLeftTVCID" forIndexPath:indexPath];
//        leftCell.yearLabel.text = self.event.year;
//        leftCell.headlineLabel.text = self.event.headline;
//        leftCell.yearView.layer.cornerRadius = 45;
//        leftCell.yearView.layer.masksToBounds = YES;
//        
//    } else {
//        
//        TimelineRightTableViewCell *rightCell = [self.profileTimelineTableView dequeueReusableCellWithIdentifier:@"PivotProfileRightTVCID" forIndexPath:indexPath];
//        rightCell.yearLabel.text = self.event.year;
//        rightCell.headlineLabel.text = self.event.headline;
//        rightCell.yearView.layer.cornerRadius = 45;
//        rightCell.yearView.layer.masksToBounds = YES;
//    }
    
}
@end

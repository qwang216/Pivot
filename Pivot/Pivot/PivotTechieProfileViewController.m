//
//  PivotTechieProfileViewController.m
//  Pivot
//
//  Created by Jason Wang on 10/31/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import "PivotTechieProfileViewController.h"
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
@property (nonatomic) Event *timeLineEvent;
//@property (nonatomic) NSArray *totalEvent;

@end

@implementation PivotTechieProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    
    self.profileImageView.image = self.user.picture;
    self.nameLabel.text = self.user.name;
    self.educationLabel.text = [NSString stringWithFormat:@"%@ - %@", self.user.education.school, self.user.education.degreeType];
    self.professionLabel.text = self.user.profession;
//    self.totalEvent = self.user.events;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - UITableViewDataSource 
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.user.events.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PivotProfileTVCID" forIndexPath:indexPath];
    return cell;
}

@end

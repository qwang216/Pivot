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

@end

@implementation PivotTechieProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINib *nibLeft = [UINib nibWithNibName:@"TimelineLeftTableViewCell" bundle:nil];
    [self.tableView registerNib:nibLeft forCellReuseIdentifier:@"TimeLineLeftTVCID"];
    
    UINib *nibRight = [UINib nibWithNibName:@"TimelineRightTableViewCell" bundle:nil];
    [self.tableView registerNib:nibRight forCellReuseIdentifier:@"TimeLineRightTVCID"];
    
    self.tableView.delegate = self;
    
    self.profileImageView.image = self.user.picture;
    self.nameLabel.text = self.user.name;
    self.educationLabel.text = [NSString stringWithFormat:@"%@ - %@", self.user.education.school, self.user.education.degreeType];
    self.professionLabel.text = self.user.profession;
}


#pragma mark - UITableViewDataSource 
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"%lu",(unsigned long)self.user.events.count);
    return self.user.events.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TimelineRightTableViewCell *rightCell = [tableView dequeueReusableCellWithIdentifier:@"TimeLineRightTVCID" forIndexPath:indexPath];
    rightCell.yearLabel.text = self.user.events[indexPath.row].year;
    rightCell.headlineLabel.text = self.user.events[indexPath.row].headline;
    
    TimelineLeftTableViewCell *leftCell = [tableView dequeueReusableCellWithIdentifier:@"TimeLineLeftTVCID" forIndexPath:indexPath];
    leftCell.yearLabel.text = self.user.events[indexPath.row].year;
    leftCell.headlineLabel.text = self.user.events[indexPath.row].headline;
    if (indexPath.row % 2) {
        return rightCell;
    } else {
        return leftCell;
    }
}


@end

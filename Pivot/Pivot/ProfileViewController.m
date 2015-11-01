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

@interface ProfileViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *profileImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *educationLabel;
@property (strong, nonatomic) IBOutlet UILabel *professionLabel;

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    User *user = [SharedManager sharedModel].user;
    
    self.nameLabel.text = user.name;
    self.educationLabel.text = [NSString stringWithFormat:@"%@ - %@", user.education.school,user.education.degreeType];
    
    
    // Do any additional setup after loading the view.
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

@end

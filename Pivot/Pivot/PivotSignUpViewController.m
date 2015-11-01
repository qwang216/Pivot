//
//  PivotSignUpViewController.m
//  Pivot
//
//  Created by Jovanny Espinal on 10/31/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import "PivotSignUpViewController.h"
#import "SharedManager.h"

@interface PivotSignUpViewController ()
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *typeOfEducation;
@property (weak, nonatomic) IBOutlet UITextField *schoolName;
@property (weak, nonatomic) IBOutlet UITextField *major;
@property (weak, nonatomic) IBOutlet UITextField *profession;
@property (weak, nonatomic) IBOutlet UITextField *interest;
@property (weak, nonatomic) IBOutlet UIImageView *profilePicture;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation PivotSignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveInfoTapped:(UIButton *)sender {
    
    User *user = [User new];
    user.name = self.name.text;
    Education *education = [Education new];
    education.degreeType = self.typeOfEducation.text;
    education.school = self.schoolName.text;
    education.major = self.major.text;
    
    user.education = education;
    user.profession = self.profession.text;
    
    Interest *interest = [Interest new];
    interest.interestName = self.interest.text;
    
    user.interests = [NSMutableArray new];
    [user.interests addObject:interest];
    
    
    
    [SharedManager sharedModel].user = user;
    
    // instantiate tab bar
    UITabBarController *tabController = [self.storyboard instantiateViewControllerWithIdentifier:@"tabController"];
    
    [tabController setSelectedIndex:2];
    
    [self presentViewController:tabController animated:YES completion:nil];
    
    
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

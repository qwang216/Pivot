//
//  PivotTechieProfileViewController.m
//  Pivot
//
//  Created by Jason Wang on 10/31/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import "PivotTechieProfileViewController.h"
#import <ChameleonFramework/Chameleon.h>

@interface PivotTechieProfileViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *profileImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *educationLabel;
@property (strong, nonatomic) IBOutlet UILabel *professionLabel;

@end

@implementation PivotTechieProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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

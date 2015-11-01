//
//  AddExperienceViewController.m
//  Pivot
//
//  Created by Lauren Caponong on 11/1/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import "AddExperienceViewController.h"

@interface AddExperienceViewController ()
@property (weak, nonatomic) IBOutlet UITextField *yearTextField;
@property (weak, nonatomic) IBOutlet UITextField *headlineTextField;
@property (weak, nonatomic) IBOutlet UITextView *detailTextView;

@end

@implementation AddExperienceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)switchForPivotPoint:(id)sender {
}

- (IBAction)saveButtonTapped:(id)sender {
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

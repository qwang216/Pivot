//
//  AddExperienceViewController.m
//  Pivot
//
//  Created by Lauren Caponong on 11/1/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import "AddExperienceViewController.h"
#import "Event.h"
#import "PivotTechieProfileDetailViewController.h"


@interface AddExperienceViewController ()
@property (weak, nonatomic) IBOutlet UITextField *yearTextField;
@property (weak, nonatomic) IBOutlet UITextField *headlineTextField;
@property (weak, nonatomic) IBOutlet UITextView *detailTextView;
@property (nonatomic) Event *event;

@end

@implementation AddExperienceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.event = [Event new];
}

- (IBAction)switchForPivotPoint:(UISwitch *)sender {
    self.event.pivotPoint = sender;
}

- (IBAction)saveButtonTapped:(UIButton *)sender {
    self.event.year = self.yearTextField.text;
    self.event.headline = self.headlineTextField.text;
    self.event.details = self.detailTextView.text;
    
    [self.delegate didAddExperienceWithEvent:self.event];
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end

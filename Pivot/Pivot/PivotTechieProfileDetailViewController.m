//
//  PivotTechieProfileDetailViewController.m
//  Pivot
//
//  Created by Jason Wang on 10/31/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import "PivotTechieProfileDetailViewController.h"
#import <ChameleonFramework/Chameleon.h>

@interface PivotTechieProfileDetailViewController () 
@property (strong, nonatomic) IBOutlet UILabel *yearLabel;
@property (strong, nonatomic) IBOutlet UITextView *descriptionTextView;

@end

@implementation PivotTechieProfileDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UINavigationController *nav = [self.storyboard instantiateViewControllerWithIdentifier:@"ProfileNavControllerID"];
    
    AddExperienceViewController *vc = (AddExperienceViewController *)nav.topViewController;
    vc.delegate = self;
    
}



@end

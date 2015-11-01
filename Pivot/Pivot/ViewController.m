//
//  ViewController.m
//  Pivot
//
//  Created by Jason Wang on 10/31/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import "ViewController.h"
#import <CROCOVideoBackground/CROCOVideoBackground.h>


@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *videoView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    [self.videoView setBackGroundVideo:@"video" withRepeat:YES withOverlayColor:[UIColor clearColor] andAlpha:0.9 andBackgroundScalingMode:CROCOVideoBackgroundModeAspectFill];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

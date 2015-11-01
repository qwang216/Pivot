//
//  PivotSignUpViewController.h
//  Pivot
//
//  Created by Jovanny Espinal on 10/31/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import "ViewController.h"
#import "User.h"

@class PivotSignUpViewController;
@protocol PivotSignUpDelegate <NSObject>

-(void)didSignUp:(User *)user;

@end

@interface PivotSignUpViewController : ViewController
@property (weak, nonatomic) id<PivotSignUpDelegate> delegate;

@end

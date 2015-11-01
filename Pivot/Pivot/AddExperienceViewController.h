//
//  AddExperienceViewController.h
//  Pivot
//
//  Created by Lauren Caponong on 11/1/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Event.h"


@class AddExperienceViewController;


@protocol AddExperienceViewControllerDelegate <NSObject>

-(void)didAddExperienceWithEvent:(Event *)event;

@end

@interface AddExperienceViewController : UIViewController

@property (nonatomic, weak) id <AddExperienceViewControllerDelegate> delegate;

@end

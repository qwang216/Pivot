//
//  TimelineRightTableViewCell.h
//  Pivot
//
//  Created by Lauren Caponong on 10/31/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimelineRightTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *yearView;
@property (weak, nonatomic) IBOutlet UILabel *headlineLabel;
@property (weak, nonatomic) IBOutlet UILabel *yearLabel;

@end

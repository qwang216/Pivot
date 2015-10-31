//
//  PivotFeedTableViewCell.h
//  Pivot
//
//  Created by Lauren Caponong on 10/31/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PivotFeedTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *pivotImageView;
@property (weak, nonatomic) IBOutlet UIImageView *profileImageView;
@property (weak, nonatomic) IBOutlet UILabel *jobLabel;
@property (weak, nonatomic) IBOutlet UILabel *pivotHeadLineLabel;

@end

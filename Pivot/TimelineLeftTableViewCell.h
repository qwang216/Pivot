//
//  TimelineLeftTableViewCell.h
//  Pivot
//
//  Created by Lauren Caponong on 10/31/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimelineLeftTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *yearView;
@property (weak, nonatomic) IBOutlet UILabel *headlineLabel;
@property (weak, nonatomic) IBOutlet UILabel *yearLabel;



@property (strong, nonatomic) IBOutlet UILabel *yearLabel2;


@property (strong, nonatomic) IBOutlet UILabel *headLineLabel2;

@end

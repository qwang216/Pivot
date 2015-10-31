//
//  User.h
//  Pivot
//
//  Created by Mesfin Bekele Mekonnen on 10/31/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Event.h"
#import "Interest.h"
#import "Education.h"

@interface User : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *profession;
@property (nonatomic) NSMutableArray<Event *> *events;
@property (nonatomic) NSMutableArray<Interest *> *interests;
@property (nonatomic) Education *education;
@property (nonatomic) UIImage *picture;

@end

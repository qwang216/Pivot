//
//  Dataset.h
//  Pivot
//
//  Created by Jovanny Espinal on 10/31/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Dataset : NSObject
@property (nonatomic) NSMutableArray<User *> *users;

@end

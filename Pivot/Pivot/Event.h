//
//  Event.h
//  Pivot
//
//  Created by Jovanny Espinal on 10/31/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Event : NSObject
@property (nonatomic) NSString *year;
@property (nonatomic) NSString *headline;
@property (nonatomic) NSString *details;
@property (nonatomic) BOOL pivotPoint;

@end

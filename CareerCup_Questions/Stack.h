//
//  Stack.h
//  CareerCup_Questions
//
//  Created by Akash Rastogi on 24/07/15.
//  Copyright (c) 2015 Akash. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject{
    NSMutableArray *array;
}

- (NSUInteger) count;
- (void) push : (id)object;
- (id) pop;
- (id) peek;
- (void) clear;
- (NSString *)description;
@end

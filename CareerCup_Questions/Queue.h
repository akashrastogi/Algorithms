//
//  Queue.h
//  CareerCup_Questions
//
//  Created by Akash Rastogi on 24/07/15.
//  Copyright (c) 2015 Akash. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Queue : NSObject{
    NSMutableArray *array;
}

- (NSUInteger) count;
- (void)enqueue:(id)anObject;
- (id)dequeue;
- (void)clear;
- (NSString *)description;

@end

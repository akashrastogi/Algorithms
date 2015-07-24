//
//  Queue.m
//  CareerCup_Questions
//
//  Created by Akash Rastogi on 24/07/15.
//  Copyright (c) 2015 Akash. All rights reserved.
//

#import "Queue.h"

@implementation Queue

- (id)init{
    self = [super init];
    if (self) {
        array = [NSMutableArray new];
    }
    return self;
}

- (NSUInteger) count{
    return [array count];
}

- (void)enqueue:(id)anObject{
    [array addObject:anObject];
}

- (id)dequeue{
    id headObject = nil;
    if ([array count] > 0) {
        headObject = [array firstObject];
        [array removeObjectAtIndex:0];
    }
    return headObject;
}

- (void)clear{
    [array removeAllObjects];
}

- (NSString *)description{
    NSString *str;
    if (array.count > 0) {
        str = [NSString stringWithFormat:@"queue- %@", [array componentsJoinedByString:@", "]];
    }
    else str = @"Queue is empty.";
    return str;
}
@end

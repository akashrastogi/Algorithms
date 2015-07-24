//
//  Stack.m
//  CareerCup_Questions
//
//  Created by Akash Rastogi on 24/07/15.
//  Copyright (c) 2015 Akash. All rights reserved.
//

#import "Stack.h"

@implementation Stack

//--constructor
- (id) init {
    self = [super init];
    if (self) {
        array = [NSMutableArray new];
    }
    return self;
}

- (NSUInteger) count{
    return [array count];
}

- (void) push : (id)object{
    [array addObject:object];
}

- (id) pop{
    id obj = nil;
    if (array.count > 0) {
        obj = [array lastObject];
        [array removeLastObject];
    }
    return obj;
}

- (id) peek{
    id obj = nil;
    if (array.count > 0) {
        obj = [array lastObject];
    }
    return obj;
}

- (void) clear{
    [array removeAllObjects];
}

- (NSString *)description{
    NSString *str;
    if (array.count > 0) {
        str = [NSString stringWithFormat:@"stack- %@", [array componentsJoinedByString:@", "]];
    }
    else str = @"Stack is empty.";
    return str;
}
@end

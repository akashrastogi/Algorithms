//
//  Algorithms.h
//  CareerCup_Questions
//
//  Created by Akash Rastogi on 24/07/15.
//  Copyright (c) 2015 Akash. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Algorithms : NSObject
- (NSArray*)arrayOfWordsIn:(NSDictionary*)words thatMatchDotFormat:(NSString*)format;
-(BOOL)checkAnagram:(NSArray *)arr;
-(BOOL)isPolindrome :(NSString *)word;
@end

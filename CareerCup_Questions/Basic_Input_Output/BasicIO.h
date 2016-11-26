//
//  BasicIO.h
//  CareerCup_Questions
//
//  Created by HealthOne on 08/09/16.
//  Copyright © 2016 Akash. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BasicIO : NSObject

+ (NSString *)toggleStringCase:(NSString *)inputString;
+ (NSInteger)numberOfNumbersDividedBy:(NSInteger)x Between:(NSInteger)a and:(NSInteger)b;
+ (NSString *)superReducedString:(NSString *)input;
+ (NSInteger)wordsCountInCamelString:(NSString *)input;
+ (BOOL)isWordPanagram:(NSString *)input;

@end

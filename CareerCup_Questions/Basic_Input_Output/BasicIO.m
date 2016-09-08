//
//  BasicIO.m
//  CareerCup_Questions
//
//  Created by HealthOne on 08/09/16.
//  Copyright © 2016 Akash. All rights reserved.
//

#import "BasicIO.h"

@implementation BasicIO

+ (NSString *)toggleStringCase:(NSString *)inputString
{
    NSUInteger length = inputString.length;
    unichar buffer[length];
    
    NSMutableArray *chars = [NSMutableArray array];
    
    [inputString getCharacters:buffer range:NSMakeRange(0, length)];
    
    for (int i=0; i<length; i++)
    {
        if (buffer[i]>='A' && buffer[i]<='Z')
            buffer[i]+=32;
        else if (buffer[i]>='a' && buffer[i]<='z')
            buffer[i]-=32;
        
        [chars addObject:[NSString stringWithFormat:@"%C", buffer[i]]];
    }
    
    NSString *outputString = [NSString stringWithCharacters:buffer length:length];
    return outputString;
}

+ (NSInteger)numberOfNumbersDividedBy:(NSInteger)x Between:(NSInteger)a and:(NSInteger)b
{
    NSInteger first = a/x;
    NSInteger last = b/x;
    NSInteger count;
    if (first<last)
        count = last - first;
    else
        count = first - last;
    
    return (count>0)?count:0;
}

@end

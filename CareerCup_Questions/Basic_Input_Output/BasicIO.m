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

+ (NSString *)superReducedString:(NSString *)input
{
    /*
     String s, consisting of  lowercase English alphabetic letters. In one operation, he can delete any pair of adjacent letters with same value. For example, string "aabcc" would become either "aab" or "bcc" after operation.
     Sample Input- aaabccddd
     Output- abd
     */
    NSMutableString *str = [NSMutableString stringWithString:input];
    for (NSInteger i=1; i<str.length; i++)
    {
        if ([str characterAtIndex:i-1] == [str characterAtIndex:i])
        {
            [str replaceCharactersInRange:NSMakeRange(i-1, 2) withString:@""];
            i=0;
        }
    }
    return str;
}

+ (NSInteger)wordsCountInCamelString:(NSString *)input
{
    NSUInteger count = [input componentsSeparatedByCharactersInSet:[NSCharacterSet uppercaseLetterCharacterSet]].count; // count = 5
    return count;
}

+ (BOOL)isWordPanagram:(NSString *)input
{
    // A sentense is a panagram if it contains all the letters of the English alphabet
    // Make an array of all characters
    NSMutableArray *arrCharacters = [NSMutableArray new];
    for (char i = 'a'; i<='z'; i++)
    {
        [arrCharacters addObject:[NSNumber numberWithChar:i]];
    }
    
    // Remove all existing characters from array
    for (int i=0; i<input.length; i++)
    {
        if (arrCharacters.count == 0)
            break;
        [arrCharacters removeObject:[NSNumber numberWithChar:[[input lowercaseString] characterAtIndex:i]]];
    }
    // Is array is empty, word is Paragram else Not
    return (arrCharacters.count == 0) ? YES : NO;
}

@end

//
//  ViewController.m
//  CareerCup_Questions
//
//  Created by Akash Rastogi on 22/06/15.
//  Copyright (c) 2015 Akash. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Pattern match
    NSDictionary *dict = @{@"cut": @"Bread",
                           @"cat": @"dog",
                           @"man": @"women",
                           @"john": @"rony",
                           @"chat": @"whatsapp"};
    NSArray *arrResult = [self arrayOfWordsIn:dict thatMatchDotFormat:@"c.t"];
    NSLog(@"%@", arrResult);
    
    // Anagram
    NSArray *arr = @[@"bat", @"tab", @"cat", @"dog", @"god", @"phone", @"pheno", @"dummy", @"muddy"];
    BOOL isAnagramExist = [self checkAnagram:arr];
    NSLog(@"isAnagramExist- %d", isAnagramExist);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Question - Given a dictionary of words, return an array of the words whose match. (i.e. pattern "c.t" match with "cat", "cut", etc. because the dot notation stand for ANY character). SUGGEST: for(for()) is not a good solution.
- (NSArray*)arrayOfWordsIn:(NSDictionary*)words thatMatchDotFormat:(NSString*)format
{
    NSArray *arrayOfWords = [words allKeys];
    NSString *wildCardString = [format stringByReplacingOccurrencesOfString:@"." withString:@"*"];
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"Self LIKE %@", wildCardString];
    NSArray *arrayMatching = [arrayOfWords filteredArrayUsingPredicate:pred];
    return arrayMatching;
}

#pragma mark - Question- Check is there is any anagram in the given array
-(BOOL)checkAnagram:(NSArray *)arr{
    NSMutableArray *arrSortedStrings = [NSMutableArray new];
    BOOL isAnagramExist = NO;
    for (NSString *str in arr) {
        NSString *sortedString = [self getSortedString:str];
        if (![arrSortedStrings containsObject:sortedString]) {
            [arrSortedStrings addObject:[self getSortedString:str]];
        }
        else {
            isAnagramExist = YES;
            break;
        }
    }
    NSLog(@"%@", arrSortedStrings);
    return isAnagramExist;
}
-(NSString *)getSortedString :(NSString *)unsortedString{

    NSMutableArray *charArray = [NSMutableArray arrayWithCapacity:unsortedString.length];
    for (int i=0; i<unsortedString.length; ++i) {
        NSString *charStr = [unsortedString substringWithRange:NSMakeRange(i, 1)];
        [charArray addObject:charStr];
    }
    [charArray sortUsingComparator:^(NSString *a, NSString *b){
        return [a compare:b];
    }];
    
    NSString *sortedString = [charArray componentsJoinedByString:@""];
    return sortedString;
}

@end

//
//  main.m
//  CareerCup_Questions
//
//  Created by Akash Rastogi on 22/06/15.
//  Copyright (c) 2015 Akash. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Basic_Input_Output/BasicIO.h"
#import "SortingAlgo.h"

int main(int argc, char * argv[])
{
    @autoreleasepool
    {
        NSString *input = @"abcDs EFgh dIjK   flMnOP";
        NSString *toggleString = [BasicIO toggleStringCase:input];
        NSLog(@"Toggle case string of %@ is %@", input, toggleString);
        
        NSInteger dividedBy = 11, first = 100, last = 7;
        NSInteger count = [BasicIO numberOfNumbersDividedBy:dividedBy Between:first and:last];
        NSLog(@"numberOfNumbersDividedBy %ld Between %ld and %ld IS %ld", dividedBy, first, last, count);
        
        NSArray *arrUnsorted  = @[@13, @31, @32, @33, @1, @98, @89, @100, @70, @31];
        NSArray *arrSorted = [SortingAlgo bubbleSortArray:arrUnsorted];
        NSLog(@"Sorted array using Bubble sort is- %@", arrSorted);
        
        arrSorted = [SortingAlgo selectionSortArray:arrUnsorted];
        NSLog(@"Sorted array using Selection sort is- %@", arrSorted);
        
        arrSorted = [SortingAlgo insertionSortArray:arrUnsorted];
        NSLog(@"Sorted array using Insertion sort is- %@", arrSorted);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

//
//  SortingAlgo.m
//  CareerCup_Questions
//
//  Created by HealthOne on 13/09/16.
//  Copyright © 2016 Akash. All rights reserved.
//

#import "SortingAlgo.h"

@implementation SortingAlgo

// Expected Input - Array of NSNumber
+ (NSArray *)bubbleSortArray:(NSArray *)arrInput
{
    if (arrInput.count == 0)// If array is empty return as it is to avoid crash
        return arrInput;
    
    NSMutableArray *arrOutput = [NSMutableArray arrayWithArray:arrInput];
    BOOL isSwapped = YES;
    while (isSwapped) {
        isSwapped = NO;
        for (int j=0; j<arrOutput.count-1; j++)
        {
            if ([arrOutput objectAtIndex:j] > [arrOutput objectAtIndex:j+1])
            {
                [arrOutput exchangeObjectAtIndex:j withObjectAtIndex:j+1];
                isSwapped = YES;
            }
        }
    }
    
    return arrOutput;
}

@end

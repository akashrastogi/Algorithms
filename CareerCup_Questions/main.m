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

int main(int argc, char * argv[])
{
    @autoreleasepool
    {
        NSString *input = @"abcDEFghIjKlMnOP";
        NSString *toggleString = [BasicIO toggleStringCase:input];
        NSLog(@"Toggle case string of %@ is %@", input, toggleString);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

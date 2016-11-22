//
//  ViewController.m
//  CareerCup_Questions
//
//  Created by Akash Rastogi on 22/06/15.
//  Copyright (c) 2015 Akash. All rights reserved.
//

#import "ViewController.h"
#import "Algorithms.h"
#import "Stack.h"
#import "Queue.h"
#import "BinarySearchTree.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Algorithms *algo = [[Algorithms alloc]init];
    // Pattern match
    NSDictionary *dict = @{@"cut": @"Bread",
                           @"cat": @"dog",
                           @"man": @"women",
                           @"john": @"rony",
                           @"chat": @"whatsapp"};
    NSArray *arrResult = [algo arrayOfWordsIn:dict thatMatchDotFormat:@"c.t"];
    NSLog(@"Patter match- %@", arrResult);
    
    // Anagram
    NSArray *arr = @[@"bat", @"tab", @"cat", @"dog", @"god", @"phone", @"pheno", @"dummy", @"muddy"];
    BOOL isAnagramExist = [algo checkAnagram:arr];
    NSLog(@"isAnagramExist- %d", isAnagramExist);
    
    // Palindrome
    NSString *word = @"naMaN";
    NSLog(@"%@ is polindrome = %@", word, [algo isPolindrome:word] ? @"True" : @"False");
    
    // Stack data structure test
    [self stackTest];
    
    // queue data structure test
    [self queueTest];
    
    // Reverse string test
    NSString *stringToReverse = @"ABCDefgHIjK";
    NSLog(@"Reverse of %@ is %@", stringToReverse, [algo reverseString:stringToReverse]);
    
    // Binary Seacrh Tree Test
    [self binarySearchTreeTest];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)stackTest{
    Stack *stack = [[Stack alloc]init];
    NSLog(@"%@", stack);
    
    [stack push:@"first object"];
    [stack push:@"second object"];
    [stack push:@"third object"];
    NSLog(@"After pushing- %@", stack);
    
    id pop = [stack pop];
    NSLog(@"poped object- %@", pop);
    NSLog(@"After poping- %@", stack);
    
    id peek = [stack peek];
    NSLog(@"peek element- %@", peek);
    
    [stack clear];
    NSLog(@"After clearing- %@", stack);
}

-(void)queueTest{
    Queue *queue = [[Queue alloc]init];
    NSLog(@"%@", queue);
    
    [queue enqueue:@"first object"];
    [queue enqueue:@"second object"];
    [queue enqueue:@"third object"];
    NSLog(@"After enqueuing- %@", queue);
    
    id dequeued = [queue dequeue];
    NSLog(@"dequeued element- %@", dequeued);
    
    [queue clear];
    NSLog(@"After clearing- %@", queue);
}

- (void)binarySearchTreeTest
{
    BinarySearchTree *bst = [[BinarySearchTree alloc]initWithValue:7];
    [bst insert:2];
    [bst insert:5];
    [bst insert:10];
    [bst insert:9];
    [bst insert:1];
    NSLog(@"Sorted Binary Search Tree- %@", bst);
    
    int searchValue = 10;
    NSLog(@"Node for %d is - %@", searchValue, [bst searchValue:searchValue]);
    
    searchValue = 20;
    NSLog(@"Node for %d is - %@", searchValue, [bst searchValue:searchValue]);
}

@end

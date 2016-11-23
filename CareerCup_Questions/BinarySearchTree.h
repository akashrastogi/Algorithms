//
//  BinarySearchTree.h
//  CareerCup_Questions
//
//  Created by HealthOne on 22/11/16.
//  Copyright © 2016 Akash. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinarySearchTree : NSObject

@property (nonatomic, assign, readonly) int value;
@property (nonatomic, strong, readonly) BinarySearchTree *left;
@property (nonatomic, strong, readonly) BinarySearchTree *right;
@property (nonatomic, strong, readonly) BinarySearchTree *parent;

- (instancetype)initWithValue:(int)value;
- (BOOL)isRoot;
- (BOOL)isLeaf;
- (BOOL)isLeftChild;
- (BOOL)isRightChild;
- (BOOL)hasLeftChild;
- (BOOL)hasRightChild;
- (BOOL)hasAnyChild;
- (BOOL)hasBothChild;

- (void)insert:(int)value;
- (BinarySearchTree *)searchValue:(int)value;
- (BinarySearchTree *)deleteValue:(int)value;

@end

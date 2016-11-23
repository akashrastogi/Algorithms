//
//  BinarySearchTree.m
//  CareerCup_Questions
//
//  Created by HealthOne on 22/11/16.
//  Copyright © 2016 Akash. All rights reserved.
//

#import "BinarySearchTree.h"

@interface BinarySearchTree()

@property (nonatomic, assign, readwrite) int value;
@property (nonatomic, strong, readwrite) BinarySearchTree *left;
@property (nonatomic, strong, readwrite) BinarySearchTree *right;
@property (nonatomic, strong, readwrite) BinarySearchTree *parent;

@end

@implementation BinarySearchTree

- (instancetype)initWithValue:(int)value
{
    self = [super init];
    if (self)
    {
        self.value = value;
    }
    return self;
}

- (NSString *)description
{
    NSMutableString *strDescription = [NSMutableString string];
    if (self.left)
    {
        [strDescription appendFormat:@"(%@) <- ", self.left.description];
    }
    [strDescription appendFormat:@"%d", self.value];
    if (self.right)
    {
        [strDescription appendFormat:@" -> (%@)", self.right.description];
    }
    return strDescription;
}

#pragma mark - Helper methods
- (BOOL)isRoot
{
    return (self.parent == nil);
}

- (BOOL)isLeaf
{
    return (!self.left && !self.right);
}

- (BOOL)isLeftChild
{
    return (self.parent
            && self.parent.left == self);
}

- (BOOL)isRightChild
{
    return (self.parent
            && self.parent.right == self);
}

- (BOOL)hasLeftChild
{
    return (self.left != nil);
}

- (BOOL)hasRightChild
{
    return (self.right != nil);
}

- (BOOL)hasAnyChild
{
    return (self.left || self.right);
}

- (BOOL)hasBothChild
{
    return (self.left && self.right);
}

#pragma mark - Basic operations
- (void)insert:(int)value
{
    if (value < self.value)
    {
        if (self.left)
        {
            [self.left insert:value];
        }
        else
        {
            self.left = [[BinarySearchTree alloc]initWithValue:value];
            self.left.parent = self;
        }
    }
    else
    {
        if (self.right)
        {
            [self.right insert:value];
        }
        else
        {
            self.right = [[BinarySearchTree alloc]initWithValue:value];
            self.right.parent = self;
        }
    }
}

- (BinarySearchTree *)searchValue:(int)value
{
    if (value < self.value)
    {
        return [self.left searchValue:value];
    }
    else if (value > self.value)
    {
        return [self.right searchValue:value];
    }
    else return self;
}

- (BinarySearchTree *)deleteValue:(int)value
{
    BinarySearchTree *node = [self searchValue:value];
    if (node)
    {
        if (node.isLeaf)// node doesn't have any child
        {
            if ([node.parent.left isEqual:node])
                node.parent.left = nil;
            else if ([node.parent.right isEqual:node])
                node.parent.right = nil;
        }
        else if (!node.hasBothChild)// node have one child either left or right
        {
            BinarySearchTree *child = node.left ? node.left : node.right;
            if([node.parent.left isEqual:node])
                node.parent.left = child;
            else if([node.parent.right isEqual:node])
                node.parent.right = child;
        }
        else if (node.hasBothChild)// node have both child
        {
            // Find maximum in the Left sub tree
            BinarySearchTree *maximum = node.left;
            while (maximum.right)
            {
                maximum = maximum.right;
            }
            node.value = maximum.value;// copy the minimum value to the node to be deleted
            // Disconect the "maximum" node
            if ([maximum.parent.left isEqual:maximum])
                maximum.parent.left = nil;
            else if ([maximum.parent.right isEqual:maximum])
                maximum.parent.right = nil;
        }
    }
    
    return self;
}

@end

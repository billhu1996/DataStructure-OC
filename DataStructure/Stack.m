//
//  Stack.m
//  Stack
//
//  Created by Bill Hu on 15/9/13.
//  Copyright (c) 2015年 ifLab. All rights reserved.
//

#import "Stack.h"

@implementation Stack

- (id)init {
    self.topNode = nil;
    self.bottomNode = nil;
    self.count = 0;
    return self;
}

- (NSError *)pop {
    if (self.topNode != nil) {
        Node *popNode = self.topNode;
        self.topNode = popNode.nextNode;
        if (self.topNode!= nil) {
            self.topNode.preNode = nil;
        }
        return [NSError errorWithDomain:@"" code:0 userInfo:nil];
    } else {
        return [[NSError alloc] initWithDomain:@"stack underflow" code:1 userInfo:nil];
    }
}

- (NSError *)pushWithData:(id)data {
    if (self.full == YES) {
        return [NSError errorWithDomain:@"stack overflow" code:1 userInfo:nil];
    } else {
        Node *newNode = [[Node alloc] initWithObject:data preNode:nil nextNode:self.topNode];
        newNode.nextNode = self.topNode;
        self.topNode.preNode = newNode;
        self.topNode = newNode;
        self.count++;
        return [NSError errorWithDomain:@"" code:0 userInfo:nil];
    }
}

- (id)top {
    if (self.count == 0) {
        return nil;
    } else {
        return self.topNode.data;
    }
}

- (BOOL)empty {
    return !self.count ? YES : NO;
}

- (BOOL)full {
    return NO;
}

@end

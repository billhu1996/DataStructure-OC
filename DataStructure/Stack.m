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

- (void)popsuccess:(void (^)(id data, NSError *error))success
           failure:(void (^)(NSError *error))failure {
    if (self.topNode != nil) {
        Node *popNode = self.topNode;
        self.topNode = popNode.nextNode;
        if (self.topNode!= nil) {
            self.topNode.preNode = nil;
        }
        NSError *error = [[NSError alloc] initWithDomain:nil code:0 userInfo:nil];
        success(popNode.data, error);
    } else {
        NSError *error = [[NSError alloc] initWithDomain:@"stack underflow" code:1 userInfo:nil];
        failure(error);
    }
}

- (void)pushWithData:(id)data
             success:(void (^)(NSError *error))success
             failure:(void (^)(NSError *error))failure {
    if (self.full == YES) {
        NSError *error = [[NSError alloc] initWithDomain:@"stack overflow" code:1 userInfo:nil];
        failure(error);
    } else {
        Node *newNode = [[Node alloc] initWithObject:data preNode:nil nextNode:self.topNode];
        newNode.nextNode = self.topNode;
        self.topNode.preNode = newNode;
        self.topNode = newNode;
        self.count++;
        success([[NSError alloc] init]);
    }
}

- (void)getTopsuccess:(void (^)(id data, NSError *error))success
              failure:(void (^)(NSError *error))failure {
    if (self.count == 0) {
        NSError *error = [[NSError alloc] initWithDomain:@"stack underflow" code:1 userInfo:nil];
        failure(error);
    } else {
        success(self.topNode.data,[[NSError alloc] init]);
    }
}

- (void)getBottomsuccess:(void (^)(id data, NSError *error))success
                 failure:(void (^)(NSError *error))failure {
    
    if (self.count == 0) {
        NSError *error = [[NSError alloc] initWithDomain:@"stack underflow" code:1 userInfo:nil];
        failure(error);
    } else {
        success(self.bottomNode.data,[[NSError alloc] init]);
    }
}

- (BOOL)full {
    return NO;
}

@end
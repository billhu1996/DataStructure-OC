//
//  Stack.h
//  Stack
//
//  Created by Bill Hu on 15/9/13.
//  Copyright (c) 2015年 ifLab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface Stack : NSObject

@property () Node* topNode;
@property () Node* bottomNode;
@property () NSInteger count;

- (id)init;

- (void)popsuccess:(void (^)(id data, NSError *error))success
           failure:(void (^)(NSError *error))failure;

- (void)pushWithData:(id)data
             success:(void (^)(NSError *error))success
             failure:(void (^)(NSError *error))failure;

- (void)getTopsuccess:(void (^)(id data, NSError *error))success
              failure:(void (^)(NSError *error))failure;

- (void)getBottomsuccess:(void (^)(id data, NSError *error))success
                 failure:(void (^)(NSError *error))failure;

- (BOOL)full;

@end

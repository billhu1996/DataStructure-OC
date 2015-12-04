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

- (NSError *)pop;

- (NSError *)pushWithData:(id)data;

- (id)top;

- (Node *)getTopNode;

- (BOOL)empty;

- (BOOL)full;

@end

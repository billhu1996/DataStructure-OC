//
//  Node.m
//  Stack
//
//  Created by Bill Hu on 15/9/22.
//  Copyright (c) 2015年 ifLab. All rights reserved.
//

#import "Node.h"

@implementation Node

-(id)initWithObject:(id)data
            preNode:(Node *)preNode
           nextNode:(Node *)nextNode {
    self.data = data;
    self.preNode = preNode;
    self.nextNode = nextNode;
    return self;
}

@end

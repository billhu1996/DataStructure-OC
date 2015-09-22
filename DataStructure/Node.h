//
//  Node.h
//  Stack
//
//  Created by Bill Hu on 15/9/22.
//  Copyright (c) 2015年 ifLab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property () Node* preNode;
@property () Node* nextNode;
@property () id data;

-(id)initWithObject:(id)data
            preNode:(Node *)preNode
           nextNode:(Node *)nextNode;

@end

//
//  Person.m
//  block的使用
//
//  Created by zyh on 16/7/13.
//  Copyright © 2016年 zyh. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)eat:(void (^)())block
{
    block();
}

- (void (^)(int))run
{
    return ^(int meter){
      
        NSLog(@"跑步%d",meter);
    };
}
@end

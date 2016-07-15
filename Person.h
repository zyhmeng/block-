//
//  Person.h
//  block的使用
//
//  Created by zyh on 16/7/13.
//  Copyright © 2016年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^blockName)();

@interface Person : NSObject

// block：ARC使用strong 非ARC使用copy
@property (nonatomic, strong) void(^operation)();


//void(^)()
- (void)eat:(void(^)())block;

//- (void)eat:(blockName)block;

- (void)run:(int)meter;

- (void(^)(int))run;

@end

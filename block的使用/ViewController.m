//
//  ViewController.m
//  block的使用
//
//  Created by zyh on 16/7/13.
//  Copyright © 2016年 zyh. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@property (nonatomic, strong) Person *p;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
     block开发中使用场景
     1.把block保存到对象中,恰当时机的时候才去调用
     2.把block当做方法的参数使用， 外界不调用，都是方法内部去调用，block实现交给外界决定
     3.把block当做方法的返回值，目的是代替方法,封装内部的实现，把block当做方法的返回值,外界不需要知道block，只管调用
     */
    
    Person *p = [[Person alloc]init];
    
    p.run(5);
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    _p.operation();
}

- (void)block2
{
    Person *p = [[Person alloc]init];
    
    //传入block给参数的block赋值
    [p eat:^{
        
        NSLog(@"吃东西");
    }];
}

- (void)block1
{
    Person *p = [[Person alloc]init];
    
    //方式一
    p.operation = ^(){
        
        NSLog(@"执行对象中block");
    };
    
    //方式二
    void(^block)() = ^() {
        
        NSLog(@"执行对象中block");
    };
    p.operation = block;
    
    _p = p;

}
- (void)block
{
    void(^block)() = ^() {
        //保存什么样的代码
        
        NSLog(@"执行block");
    };
    
    // block作用：帮我保存一份代码，等到恰当时机的时候才调用
    
    //调用block
    block();

}


@end

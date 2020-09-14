//
//  main.m
//  firdt
//
//  Created by hs on 2020/9/12.
//  Copyright © 2020 hs. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 
 */
//编写类 NSObject具备创建对象
@interface Iphone : NSObject {
    
    @public
    float _model;
    int _cpu;
    double _size;
    int _color;
}
@end

//实现类
@implementation Iphone

@end
int main(int argc, const char * argv[]) {
    //自动释放池
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSLog(@"Objective-C OK!");
          
    }
    Iphone *p = [Iphone new];
    //使用一个指针 保存了 一个对象的地址 那么称这个指针为某个类型的对象
    p->_size = 3.5;
    p->_color = 0;
    p->_model = 3.1;
    p->_cpu = 1;
    struct Person {
        int age;
        char *name;
    };
//    struct Person person = {30, "njr"};
    struct Person person;
    struct Person *pis = &person;
//    (*pis).age = 30;
//    (*pis).name = "njr";
    
    pis->age = 30;
    pis->name = "njr";
    return 0;
}

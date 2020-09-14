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
    float _model;
    int _cpu;
    double _size;
    int _color;
}
@end

//实现类
@implementation Iphone

<#methods#>

@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSLog(@"Objective-C OK!");
        Iphone *p = [Iphone new];
    }
    return 0;
}

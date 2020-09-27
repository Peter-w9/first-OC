//
//  main.m
//  firdt
//
//  Created by hs on 2020/9/12.
//  Copyright © 2020 hs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Test.h"
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
-(NSString *) loadMSg;
@end

@interface  MyClass : NSObject
{
    int count;
    id data;
    NSString* name;
}
//方法类型标识符 (返回类型) 方法签名关键词:(参数类型)参数名 方法签名关键词:(参数类型)参数名
//NSUInteger是无符号的，即没有负数,NSInteger是有符号的
-(void)insertObject:(id)anObject atIndex:(NSUInteger)index;
-(id) initWithString:(NSString*)aName;
+(MyClass*)createMyClassWithString:(NSString*)aName;

@end

//实现类
@implementation Iphone
/*
 OC中类方法用+ 对象方法用-
 对象方法可以直接访问对象属性，必须使用对象调用
 对象方法中可以直接调用其他对象方法
 对象方法中可以抵用类方法
 
 类方法不可以直接访问对象属性，必须使用类调用
 类方法中不可以直接调用对象方法
 类方法中可以直接调用类方法
 */
- (NSString *) loadMSg
{
    return @"Objective-C Msg";
}
- (void) about
{
    NSLog(@"device log:");
}
@end


typedef struct {
    int year;
    int month;
    int day;
} Date;

@interface Student : NSObject
{
@public
    NSString *_name;
    Date _birthday;
}
-(void)say;
@end

@implementation Student
-(void)say{
    NSLog(@"%@ %i %i %i",_name, -_birthday.year, -_birthday.month, -_birthday.day);
}

@end

int main(int argc, const char * argv[]) {
    //自动释放池
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSLog(@"Objective-C OK!");
        NSLog(@"%i", 2^10);
        NSMutableString *str = [NSMutableString stringWithString:@"hello"];
        //分配空间 + 初始化
        Test *test = [[Test alloc]init];
        test.str1 = str;
        test.str2 = str;
        [str appendString:@" world"];
        NSLog(@"str:%@  str1:%@  str2:%@",str,test.str1,test.str2);
    }
    Iphone *p = [Iphone new];
    //使用一个指针 保存了 一个对象的地址 那么称这个指针为某个类型的对象
    p->_size = 3.5;
    p->_color = 0;
    p->_model = 3.1;
    p->_cpu = 1;
    
    [p about];
    //输出C语言字符串 %s OC用%@
    NSLog(@"content = %@", [p loadMSg]);
    //带占位符
    NSString *str = [NSString stringWithFormat:@"sid = %f\n",1.75];
    NSLog(@"str = %@", str);
    
    char name[] = "njr"; // \0
    size_t size = sizeof(name);
    size_t size2 = strlen(name);
    printf("size = %lu size2 = %lu\n", size, size2);
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
    
    Student *stu = [Student new];
    stu->_name = @"njr";
    //通过强制类型转换赋值的原理是 将date结构体所有属性全部拷贝一份
    stu->_birthday = (Date){1998,1,2};
    
//    stu->_birthday.year = 2000;
//    stu->_birthday.month = 12;
//    stu->_birthday.day = 1;
    
    return 0;
}


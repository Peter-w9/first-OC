//
//  Soldier.h
//  firdt
//
//  Created by hs on 2020/9/27.
//  Copyright © 2020 hs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Gun : NSObject
{
@public
    int _bullet;
    
}
@end

@implementation Gun


@end

@interface Soldier : NSObject
{
    @public
    NSString *_name;
    double _height;
    double _weight;
}
-(void)fire:(Gun *)gun;
@end

@implementation Soldier

-(void)fire:(Gun *)gun
{
    NSLog(@"fire……");
}
@end


NS_ASSUME_NONNULL_END

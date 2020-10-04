//
//  Soldier.h
//  firdt
//
//  Created by hs on 2020/9/27.
//  Copyright © 2020 hs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gun.h"

@interface Soldier : NSObject
{
    @public
    NSString *_name;
    double _height;
    double _weight;
}
-(void)fire:(Gun *)gun;
@end

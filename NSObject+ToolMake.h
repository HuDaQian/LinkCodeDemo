//
//  NSObject+ToolMake.h
//  BlockLSBCDemo
//
//  Created by Jie on 16/8/4.
//  Copyright © 2016年 com.fazhiwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class ButtonMake;
@interface NSObject (ToolMake)
+ (UIButton *)makerButton:(void(^)(ButtonMake *maker))buttonMaker;
@end

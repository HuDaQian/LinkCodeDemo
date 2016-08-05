//
//  NSObject+ToolMake.m
//  BlockLSBCDemo
//
//  Created by Jie on 16/8/4.
//  Copyright © 2016年 com.fazhiwang. All rights reserved.
//

#import "NSObject+ToolMake.h"
#import "ButtonMake.h"

@implementation NSObject (ToolMake)
+ (UIButton *)makerButton:(void(^)(ButtonMake *maker))buttonMaker {
    ButtonMake *btn = [[ButtonMake alloc] init];
    buttonMaker(btn);
    return btn.serectButton;
}
@end

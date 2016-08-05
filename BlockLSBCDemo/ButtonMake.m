//
//  ButtonMake.m
//  BlockLSBCDemo
//
//  Created by Jie on 16/8/4.
//  Copyright © 2016年 com.fazhiwang. All rights reserved.
//

#import "ButtonMake.h"
#import <UIKit/UIKit.h>

@interface ButtonMake() {
}

@end

@implementation ButtonMake
@synthesize serectButton;
- (instancetype)init {
    self = [super init];
    if (self) {
        serectButton = [[UIButton alloc] init];
    }
    return self;
}

- (ButtonMake *(^)(CGFloat,CGFloat,CGFloat,CGFloat))button_Frame{
    return ^(CGFloat x,CGFloat y,CGFloat w,CGFloat h) {
        [serectButton setFrame:CGRectMake(x, y, w, h)];
        return self;
    };
}
- (ButtonMake *(^)(NSInteger))button_Tag {
    return ^(NSInteger tag) {
        [serectButton setTag:tag];
        return self;
    };
}
- (ButtonMake *(^)(UIColor *))button_tintColor {
    return ^(UIColor *tColor) {
        [serectButton setTintColor:tColor];
        return self;
    };
}
- (ButtonMake *(^)(NSString *,UIControlState))button_title_state {
    return ^(NSString *title,UIControlState state) {
        [serectButton setTitle:title forState:state];
        return self;
    };
}
- (ButtonMake *(^)(UIImage *,UIControlState))button_image_state {
    return ^(UIImage *image,UIControlState state) {
        [serectButton setImage:image forState:state];
        return self;
    };
}
@end

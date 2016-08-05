//
//  UIButton+Extension.m
//  BlockLSBCDemo
//
//  Created by Jie on 16/8/4.
//  Copyright © 2016年 com.fazhiwang. All rights reserved.
//

#import "UIButton+Extension.h"
#import <objc/runtime.h>

typedef void(^ActionBlock) (void);
static char key;
@implementation UIButton (Extension)
//@synthesize button_tintColor,button_Tag,button_Frame;
-(void)handaction:(void (^)(void))block{
    [self addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    objc_setAssociatedObject(self, &key, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(void)buttonClick:(UIButton *)butotn{
    ActionBlock block = objc_getAssociatedObject(self, &key);
    if (block) {
        block();
    }
}
- (UIButton *(^)(CGFloat,CGFloat,CGFloat,CGFloat))button_Frame{
    return ^(CGFloat x,CGFloat y,CGFloat w,CGFloat h) {
        [self setFrame:CGRectMake(x, y, w, h)];
        return self;
    };
}
- (UIButton *(^)(NSInteger))button_Tag {
    return ^(NSInteger tag) {
        [self setTag:tag];
        return self;
    };
}
- (UIButton *(^)(UIColor *))button_tintColor {
    return ^(UIColor *tColor) {
        [self setTintColor:tColor];
        return self;
    };
}
- (UIButton *(^)(NSString *,UIControlState))button_title_state {
    return ^(NSString *title,UIControlState state) {
        [self setTitle:title forState:state];
        return self;
    };
}
- (UIButton *(^)(UIImage *,UIControlState))button_image_state {
    return ^(UIImage *image,UIControlState state) {
        [self setImage:image forState:state];
        return self;
    };
}

@end

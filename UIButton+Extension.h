//
//  UIButton+Extension.h
//  BlockLSBCDemo
//
//  Created by Jie on 16/8/4.
//  Copyright © 2016年 com.fazhiwang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Extension)
@property (nonatomic, copy) UIButton *(^button_Frame)(CGFloat x,CGFloat y,CGFloat w,CGFloat h);
@property (nonatomic, copy) UIButton *(^button_Tag)(NSInteger tag);
@property (nonatomic, copy) UIButton *(^button_tintColor)(UIColor *tColor);
@property (nonatomic, copy) UIButton *(^button_title_state)(NSString *title,UIControlState state);
@property (nonatomic, copy) UIButton *(^button_image_state)(UIImage *image,UIControlState state);


-(void)handaction:(void (^)(void))block;
@end

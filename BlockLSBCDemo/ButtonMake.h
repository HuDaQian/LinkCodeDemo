//
//  ButtonMake.h
//  BlockLSBCDemo
//
//  Created by Jie on 16/8/4.
//  Copyright © 2016年 com.fazhiwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ButtonMake : NSObject
@property (nonatomic, strong) UIButton *serectButton;


- (ButtonMake *(^)(CGFloat,CGFloat,CGFloat,CGFloat))button_Frame;
- (ButtonMake *(^)(NSInteger))button_Tag;
- (ButtonMake *(^)(UIColor *))button_tintColor;
- (ButtonMake *(^)(NSString *,UIControlState))button_title_state;
- (ButtonMake *(^)(UIImage *,UIControlState))button_image_state;

@end

//
//  ViewController.m
//  BlockLSBCDemo
//
//  Created by Jie on 16/8/4.
//  Copyright © 2016年 com.fazhiwang. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.button_Frame(100, 100, 80,44)
    .button_Tag(1000)
    .button_tintColor([UIColor purpleColor])
    .button_title_state(@"确定",UIControlStateNormal)
    .button_title_state(@"Sure",UIControlStateHighlighted);
    [btn handaction:^{
        NSLog(@"!!!");
    }];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

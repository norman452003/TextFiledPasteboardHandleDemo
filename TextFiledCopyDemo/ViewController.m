//
//  ViewController.m
//  TextFiledCopyDemo
//
//  Created by gongxin on 16/8/18.
//  Copyright © 2016年 gongxin. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+Util.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UITextField *tf1 = [[UITextField alloc] init];
    tf1.frame = CGRectMake(20, 64, 150, 30);
    [self.view addSubview:tf1];
    tf1.borderStyle = UITextBorderStyleRoundedRect;
    tf1.placeholder = @"粘贴板可以使用";
    
    UITextField *tf2 = [[UITextField alloc] init];
    tf2.frame = CGRectMake(20, 120, 150, 30);
    tf2.prohibitEditMenu = YES;
    [self.view addSubview:tf2];
    tf2.borderStyle = UITextBorderStyleRoundedRect;
    tf2.placeholder = @"粘贴板不可以使用";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end

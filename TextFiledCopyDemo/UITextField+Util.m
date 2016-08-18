//
//  UITextField+Util.m
//  TextFiledCopyDemo
//
//  Created by gongxin on 16/8/18.
//  Copyright © 2016年 gongxin. All rights reserved.
//

#import "UITextField+Util.h"
#import <objc/runtime.h>

static char kEnableEditMenu;

@implementation UITextField (Util)

- (void)setProhibitEditMenu:(BOOL)prohibitEditMenu{
    objc_setAssociatedObject(self, &kEnableEditMenu, @(prohibitEditMenu), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)prohibitEditMenu{
    return objc_getAssociatedObject(self, &kEnableEditMenu);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender{
    return self.prohibitEditMenu ? NO : YES;
}

@end

//
//  UIView+FDFrame.m
//  FDPickerView
//
//  Created by 徐忠林 on 26/12/2016.
//  Copyright © 2016 feyddy. All rights reserved.
//

#import "UIView+FDFrame.h"

@implementation UIView (FDFrame)
- (void)setFd_x:(CGFloat)fd_x
{
    CGRect frame = self.frame;
    frame.origin.x = fd_x;
    self.frame = frame;
}

- (void)setFd_y:(CGFloat)fd_y
{
    CGRect frame = self.frame;
    frame.origin.y = fd_y;
    self.frame = frame;
}

- (CGFloat)fd_x
{
    return self.frame.origin.x;
}

- (CGFloat)fd_y
{
    return self.frame.origin.y;
}

- (void)setFd_width:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setFd_height:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)fd_height
{
    return self.frame.size.height;
}

- (CGFloat)fd_width
{
    return self.frame.size.width;
}

- (void)setFd_centerX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)fd_centerX
{
    return self.center.x;
}

- (void)setFd_centerY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)fd_centerY
{
    return self.center.y;
}

- (void)setFd_size:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)fd_size
{
    return self.frame.size;
}

- (void)setFd_origin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)fd_origin
{
    return self.frame.origin;
}

- (CGFloat)fd_left {
    return self.frame.origin.x;
}

- (void)setFd_left:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)fd_top {
    return self.frame.origin.y;
}

- (void)setFd_top:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)fd_right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setFd_right:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)fd_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setFd_bottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}


- (void)fd_fill
{
    self.frame = CGRectMake(0, 0, self.superview.fd_width, self.superview.fd_height);
}

- (void)addTarget:(id)target
           action:(SEL)action;
{
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:target
                                                                         action:action];
    self.userInteractionEnabled = YES;
    [self addGestureRecognizer:tap];
}

- (void)addBorderColor:(UIColor *)color{
    [self.layer setBorderColor:color.CGColor];
    [self.layer setBorderWidth:0.5];
    [self.layer setCornerRadius:4];
}
@end

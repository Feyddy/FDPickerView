//
//  FDPickerViewCommon.h
//  FDPickerView
//
//  Created by 徐忠林 on 25/12/2016.
//  Copyright © 2016 feyddy. All rights reserved.
//

/**
 *  1.屏幕尺寸
 */
#define FDScreenWidth  CGRectGetWidth([UIScreen mainScreen].bounds)
#define FDScreenHeight CGRectGetHeight([UIScreen mainScreen].bounds)

/**
 *  2.返回一个RGBA格式的UIColor对象
 */
#define FDRGBA(r, g, b, a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]

/**
 *  3.返回一个RGB格式的UIColor对象
 */
#define FDRGB(r, g, b) FDRGBA(r, g, b, 1.0f)

/**
 *  4.弱引用
 */
#define FDWeakSelf __weak typeof(self) weakSelf = self;


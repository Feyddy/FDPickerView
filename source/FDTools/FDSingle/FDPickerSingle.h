//
//  FDPickerSingle.h
//  FDPickerView
//
//  Created by t3 on 16/12/28.
//  Copyright © 2016年 feyddy. All rights reserved.
//

#import "FDPickerView.h"
NS_ASSUME_NONNULL_BEGIN
@class FDPickerSingle;
@protocol  FDPickerSingleDelegate<NSObject>
- (void)pickerSingle:(FDPickerSingle *)pickerSingle selectedTitle:(NSString *)selectedTitle;
@end
@interface FDPickerSingle : FDPickerView

/** 1.设置字符串数据数组 */
@property (nonatomic, strong)NSMutableArray<NSString *> *arrayData;
/** 2.设置单位标题 */
@property (nonatomic, strong)NSString *titleUnit;
/** 3.中间选择框的高度，default is 44*/
@property (nonatomic, assign)CGFloat heightPickerComponent;
/** 4.中间选择框的宽度，default is 32*/
@property (nonatomic, assign)CGFloat widthPickerComponent;
@property(nonatomic, weak)id <FDPickerSingleDelegate>delegate;

@end
NS_ASSUME_NONNULL_END
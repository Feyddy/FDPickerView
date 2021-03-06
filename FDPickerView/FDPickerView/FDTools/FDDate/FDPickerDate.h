//
//  FDPickerDate.h
//  FDPickerView
//
//  Created by t3 on 16/12/28.
//  Copyright © 2016年 feyddy. All rights reserved.
//

#import "FDPickerView.h"
NS_ASSUME_NONNULL_BEGIN
@class FDPickerDate;
@protocol  FDPickerDateDelegate<NSObject>
- (void)pickerDate:(FDPickerDate *)pickerDate year:(NSInteger)year month:(NSInteger)month day:(NSInteger)day;

@end
@interface FDPickerDate : FDPickerView
/** 1.最小的年份，default is 1900 */
@property (nonatomic, assign)NSInteger yearLeast;
/** 2.显示年份数量，default is 200 */
@property (nonatomic, assign)NSInteger yearSum;
/** 3.中间选择框的高度，default is 28*/
@property (nonatomic, assign)CGFloat heightPickerComponent;

@property(nonatomic, weak)id <FDPickerDateDelegate>delegate ;

@end
NS_ASSUME_NONNULL_END

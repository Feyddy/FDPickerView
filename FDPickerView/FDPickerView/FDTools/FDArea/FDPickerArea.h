//
//  FDPickerArea.h
//  FDPickerView
//
//  Created by 徐忠林 on 26/12/2016.
//  Copyright © 2016 feyddy. All rights reserved.
//

#import "FDPickerView.h"
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@class FDPickerArea;
@protocol  FDPickerAreaDelegate<NSObject>

- (void)pickerArea:(FDPickerArea *)pickerArea province:(NSString *)province city:(NSString *)city area:(NSString *)area;

@end


@interface FDPickerArea : FDPickerView
/** 1.中间选择框的高度，default is 32*/
@property (nonatomic, assign)CGFloat heightPickerComponent;

@property(nonatomic, weak)id <FDPickerAreaDelegate>delegate ;
@end
NS_ASSUME_NONNULL_END
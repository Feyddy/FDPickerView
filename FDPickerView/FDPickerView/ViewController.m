//
//  ViewController.m
//  FDPickerView
//
//  Created by t3 on 16/12/23.
//  Copyright © 2016年 feyddy. All rights reserved.
//

#import "ViewController.h"

#import "FDPickerArea.h"
#import "FDPickerSingle.h"
#import "FDPickerDate.h"

@interface ViewController ()<UITextFieldDelegate, FDPickerAreaDelegate, FDPickerSingleDelegate, FDPickerDateDelegate>
@property (strong, nonatomic) UITextField *textArea;
@property (strong, nonatomic) UITextField *textSingle;
@property (strong, nonatomic) UITextField *textDate;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    [self setupUI];
}

- (void)setupUI {
    self.textArea = [[UITextField alloc] initWithFrame:CGRectMake(10, 80, FDScreenWidth - 20, 80)];
    self.textArea.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.textArea];
    
    self.textSingle = [[UITextField alloc] initWithFrame:CGRectMake(10, 180, FDScreenWidth - 20, 80)];
    self.textSingle.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.textSingle];
    
    self.textDate = [[UITextField alloc] initWithFrame:CGRectMake(10, 280, FDScreenWidth - 20, 80)];
    self.textDate.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.textDate];
    
    self.textArea.delegate = self;
    self.textSingle.delegate = self;
    self.textDate.delegate = self;
}


#pragma mark - --- delegate 视图委托 ---

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (textField == self.textArea) {
        [self.textArea resignFirstResponder];
        
        
        FDPickerArea *pickerArea = [[FDPickerArea alloc]init];
        [pickerArea setDelegate:self];
        [pickerArea setContentMode:FDPickerContentModeCenter];
        [pickerArea show];
        
    }
    
    if (textField == self.textSingle) {
        [self.textSingle resignFirstResponder];
        
        NSMutableArray *arrayData = [NSMutableArray array];
        for (int i = 1; i < 1000; i++) {
            NSString *string = [NSString stringWithFormat:@"%d", i];
            [arrayData addObject:string];
        }
        
        FDPickerSingle *pickerSingle = [[FDPickerSingle alloc]init];
        [pickerSingle setArrayData:arrayData];
        [pickerSingle setTitle:@"请选择价格"];
        [pickerSingle setTitleUnit:@"人民币"];
        [pickerSingle setContentMode:FDPickerContentModeCenter];
        [pickerSingle setDelegate:self];
        [pickerSingle show];
    }
    
    
    if (textField == self.textDate) {
        [self.textDate resignFirstResponder];
        
        FDPickerDate *pickerDate = [[FDPickerDate alloc]init];
        [pickerDate setDelegate:self];
        [pickerDate show];
    }
    
}

- (void)pickerArea:(FDPickerArea *)pickerArea province:(NSString *)province city:(NSString *)city area:(NSString *)area
{
    NSString *text = [NSString stringWithFormat:@"%@ %@ %@", province, city, area];
    self.textArea.text = text;
}

- (void)pickerSingle:(FDPickerSingle *)pickerSingle selectedTitle:(NSString *)selectedTitle
{
    NSString *text = [NSString stringWithFormat:@"%@ 人民币", selectedTitle];
    self.textSingle.text = text;
}

- (void)pickerDate:(FDPickerDate *)pickerDate year:(NSInteger)year month:(NSInteger)month day:(NSInteger)day
{
    NSString *text = [NSString stringWithFormat:@"%zd年%zd月%zd日", year, month, day];
    self.textDate.text = text;
}
#pragma mark - --- event response 事件相应 ---

#pragma mark - --- private methods 私有方法 ---

#pragma mark - --- getters and setters 属性 ---

@end

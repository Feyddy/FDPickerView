//
//  FDFirstStartViewController.m
//  FDPickerView
//
//  Created by t3 on 16/12/23.
//  Copyright © 2016年 feyddy. All rights reserved.
//

#import "FDFirstStartViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVKit/AVKit.h>
#import "ViewController.h"

@interface FDFirstStartViewController ()

@property (strong, nonatomic) MPMoviePlayerController *player;

@end

@implementation FDFirstStartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupVideoPlayer];
}

- (void)setupVideoPlayer
{
    self.player = [[MPMoviePlayerController alloc] initWithContentURL:_movieURL];
    [self.view addSubview:self.player.view];
    //设置播放器自动播放音乐
    self.player.shouldAutoplay = YES;
    
    [self.player setControlStyle:MPMovieControlStyleNone];
    //设置播放器重复播放
    self.player.repeatMode = MPMovieRepeatModeOne;
     //设置播放器尺寸
    [self.player.view setFrame:self.view.bounds];
    
    
    self.player.view.alpha = 0;
    [UIView animateWithDuration:3 animations:^{
        self.player.view.alpha = 1;
        [self.player prepareToPlay];
    }];
    
    [self setupLoginView];
}

- (void)setupLoginView
{
    //进入按钮
    UIButton *enterMainButton = [[UIButton alloc] init];
    enterMainButton.frame = CGRectMake(24, [UIScreen mainScreen].bounds.size.height - 32 - 48, [UIScreen mainScreen].bounds.size.width - 48, 48);
    enterMainButton.layer.borderWidth = 1;
    enterMainButton.layer.cornerRadius = 24;
    enterMainButton.layer.borderColor = [UIColor whiteColor].CGColor;
    [enterMainButton setTitle:@"进入应用" forState:UIControlStateNormal];
    enterMainButton.alpha = 0;
    [self.player.view addSubview:enterMainButton];
    [enterMainButton addTarget:self action:@selector(enterMainAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [UIView animateWithDuration:3.0 animations:^{
        enterMainButton.alpha = 1.0;
    }];
}


- (void)enterMainAction:(UIButton *)btn {
    ViewController *vc = [[ViewController alloc] init];
    self.view.window.rootViewController = vc;
    
}

@end

//
//  ViewController.m
//  BufferSlider
//
//  Created by 吴湧霖 on 15/9/29.
//  Copyright © 2015年 吴湧霖. All rights reserved.
//

#import "ViewController.h"
#import "BufferSlider.h"

@interface ViewController ()

@property (nonatomic, strong) BufferSlider *bufferSlider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.bufferSlider];
}

- (void)viewDidLayoutSubviews {
    self.bufferSlider.frame = CGRectMake(10, 100, self.view.frame.size.width - 20, 5);
    [super viewDidLayoutSubviews];
}

#pragma mark - Getter
- (BufferSlider *)bufferSlider {
    if (!_bufferSlider) {
        _bufferSlider = [[BufferSlider alloc] init];
        _bufferSlider.minimumTrackTintColor = [UIColor colorWithRed:255.0/255 green:91.0/255 blue:0.0/255 alpha:1];
        _bufferSlider.bufferTrackTintColor = [UIColor greenColor];
        _bufferSlider.maximumTrackTintColor = [UIColor colorWithWhite:0.6 alpha:1];
        _bufferSlider.thumbTintColor = [UIColor redColor];
        _bufferSlider.minimumValue = 0;
        _bufferSlider.maximumValue = 100;
        _bufferSlider.value = 10;
        _bufferSlider.bufferValue = 50;
    }
    return _bufferSlider;
}

@end

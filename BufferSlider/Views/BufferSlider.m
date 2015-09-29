//
//  BufferSlider.m
//  BufferSlider
//
//  Created by 吴湧霖 on 15/9/29.
//  Copyright © 2015年 吴湧霖. All rights reserved.
//

#import "BufferSlider.h"

@interface BufferSlider ()

@property (nonatomic, strong) UISlider *bufferValueSlider;
@property (nonatomic, strong) UISlider *normalValueSlider;

@end

@implementation BufferSlider

#pragma mark - 初始化
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    [self addSubview:self.bufferValueSlider];
    [self addSubview:self.normalValueSlider];
}

#pragma mark - 子视图布局
- (void)layoutSubviews {
    self.bufferValueSlider.frame = self.bounds;
    self.normalValueSlider.frame = self.bounds;
    [super layoutSubviews];
}

#pragma mark - Setter
- (void)setValue:(float)value {
    _value = value;
    self.normalValueSlider.value = value;
}

- (void)setBufferValue:(float)bufferValue {
    _bufferValue = bufferValue;
    self.bufferValueSlider.value = bufferValue;
}

- (void)setMinimumValue:(float)minimumValue {
    _minimumValue = minimumValue;
    self.normalValueSlider.minimumValue = minimumValue;
    self.bufferValueSlider.minimumValue = minimumValue;
}

- (void)setMaximumValue:(float)maximumValue {
    _maximumValue = maximumValue;
    self.normalValueSlider.maximumValue = maximumValue;
    self.bufferValueSlider.maximumValue = maximumValue;
}

- (void)setMinimumTrackTintColor:(UIColor *)minimumTrackTintColor {
    _maximumTrackTintColor = minimumTrackTintColor;
    self.normalValueSlider.minimumTrackTintColor = minimumTrackTintColor;
}

- (void)setBufferTrackTintColor:(UIColor *)bufferTrackTintColor {
    _bufferTrackTintColor = bufferTrackTintColor;
    self.bufferValueSlider.minimumTrackTintColor = bufferTrackTintColor;
}

- (void)setMaximumTrackTintColor:(UIColor *)maximumTrackTintColor {
    _maximumTrackTintColor = maximumTrackTintColor;
    self.bufferValueSlider.maximumTrackTintColor = maximumTrackTintColor;
}

- (void)setThumbTintColor:(UIColor *)thumbTintColor {
    _thumbTintColor = thumbTintColor;
    self.normalValueSlider.thumbTintColor = thumbTintColor;
}

- (void)setMinimumTrackImage:(UIImage *)image forState:(UIControlState)state {
    [self.normalValueSlider setMinimumTrackImage:image forState:state];
}

- (void)setBufferTrackImage:(UIImage *)image forState:(UIControlState)state {
    [self.bufferValueSlider setMinimumTrackImage:image forState:state];
}

- (void)setMaximumTrackImage:(UIImage *)image forState:(UIControlState)state {
    [self.bufferValueSlider setMaximumTrackImage:image forState:state];
}

- (void)setThumbImage:(UIImage *)image forState:(UIControlState)state {
    [self.normalValueSlider setThumbImage:image forState:state];
}

#pragma mark - Getter
- (UISlider *)bufferValueSlider {
    if (!_bufferValueSlider) {
        _bufferValueSlider = [[UISlider alloc] init];
        _bufferValueSlider.thumbTintColor = [UIColor clearColor];
        _bufferValueSlider.minimumTrackTintColor = [UIColor yellowColor];
        _bufferValueSlider.maximumTrackTintColor = [UIColor greenColor];
        _bufferValueSlider.minimumValue = 0;
        _bufferValueSlider.maximumValue = 100;
        _bufferValueSlider.value = 50;
    }
    return _bufferValueSlider;
}

- (UISlider *)normalValueSlider {
    if (!_normalValueSlider) {
        _normalValueSlider = [[UISlider alloc] init];
        _normalValueSlider.minimumTrackTintColor = [UIColor blueColor];
        _normalValueSlider.maximumTrackTintColor = [UIColor clearColor];
        _normalValueSlider.minimumValue = 0;
        _normalValueSlider.maximumValue = 100;
        _normalValueSlider.value = 0;
    }
    return _normalValueSlider;
}

@end

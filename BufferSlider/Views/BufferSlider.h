//
//  BufferSlider.h
//  BufferSlider
//
//  Created by 吴湧霖 on 15/9/29.
//  Copyright © 2015年 吴湧霖. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BufferSlider : UIView

/**
 *  进度条值
 */
@property (nonatomic, assign) float value;
/**
 *  进度条缓冲值
 */
@property (nonatomic, assign) float bufferValue;
/**
 *  进度条最小值
 */
@property (nonatomic, assign) float minimumValue;
/**
 *  进度条最大值
 */
@property (nonatomic, assign) float maximumValue;
/**
 *  进度条已拖动颜色值
 */
@property (nonatomic, strong) UIColor *minimumTrackTintColor;
/**
 *  进度条已缓存颜色值
 */
@property (nonatomic, strong) UIColor *bufferTrackTintColor;
/**
 *  进度条未缓冲颜色值
 */
@property (nonatomic, strong) UIColor *maximumTrackTintColor;
/**
 *  进度条拖动块颜色值
 */
@property (nonatomic, strong) UIColor *thumbTintColor;

/**
 *  设置已拖动进度条图片
 *
 *  @param image
 *  @param state
 */
- (void)setMinimumTrackImage:(nullable UIImage *)image  forState:(UIControlState)state;

/**
 *  设置已缓冲进度条图片
 *
 *  @param image
 *  @param state
 */
- (void)setBufferTrackImage:(nullable UIImage *)image  forState:(UIControlState)state;

/**
 *  设置未缓冲进度条图片
 *
 *  @param image
 *  @param state
 */
- (void)setMaximumTrackImage:(nullable UIImage *)image  forState:(UIControlState)state;

/**
 *  设置进度条拖动块图片
 *
 *  @param image
 *  @param state
 */
- (void)setThumbImage:(nullable UIImage *)image forState:(UIControlState)state;


@end

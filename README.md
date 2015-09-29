# BufferSlider
iOS具有缓冲进度条的Slider
# 使用CocoaPods安装
pod 'BufferSlider', :git => 'https://github.com/IceCreamWu/BufferSlider.git'
# 使用
        
        _bufferSlider = [[BufferSlider alloc] init];
        _bufferSlider.minimumTrackTintColor = [UIColor colorWithRed:255.0/255 green:91.0/255 blue:0.0/255 alpha:1];
        _bufferSlider.bufferTrackTintColor = [UIColor greenColor];
        _bufferSlider.maximumTrackTintColor = [UIColor colorWithWhite:0.6 alpha:1];
        _bufferSlider.thumbTintColor = [UIColor redColor];
        _bufferSlider.minimumValue = 0;
        _bufferSlider.maximumValue = 100;
        _bufferSlider.value = 10;
        _bufferSlider.bufferValue = 50;

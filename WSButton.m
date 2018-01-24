//
//  WSButton.m
//  自定义Button图片和Title布局
//
//  Created by wangsheng on 2018/1/23.
//  Copyright © 2018年 wangsheng. All rights reserved.
//

#import "WSButton.h"
#import "UIView+RectExtension.h"

@implementation WSButton

/**默认值*/
- (void)defaultType{
    _buttonLayoutType = WSButtonLayoutNormal;
    _imageAndTitleSpace = 0;
}

-(instancetype)initWithFrame:(CGRect)frame WithButtonType:(WSButtonLayoutType)buttonType
{
    if (self=[super initWithFrame:frame]) {
        [self defaultType];
        _buttonLayoutType = buttonType;
    }
    return self;
}

-(void)setButtonLayoutType:(WSButtonLayoutType)buttonLayoutType
{
    _buttonLayoutType = buttonLayoutType;
    [self layoutIfNeeded];
}

-(void)setImageAndTitleSpace:(CGFloat)imageAndTitleSpace
{
    _imageAndTitleSpace = imageAndTitleSpace;
    [self layoutIfNeeded];
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    switch (self.buttonLayoutType) {
        case WSButtonLayoutNormal:
        {
            self.imageView.ws_centerY = self.titleLabel.ws_centerY = self.ws_height*0.5;
            
            CGFloat margin = (self.ws_width - (self.imageView.ws_width+self.titleLabel.ws_width) - self.imageAndTitleSpace)/2.0;
            self.imageView.ws_x = margin;
            self.titleLabel.ws_x = self.imageView.ws_maxX + self.imageAndTitleSpace;
            
        }break;
        case WSButtonLayoutImageRight:
        {
            self.imageView.ws_centerY = self.titleLabel.ws_centerY = self.ws_height*0.5;
            
            CGFloat margin = (self.ws_width - (self.imageView.ws_width+self.titleLabel.ws_width) - self.imageAndTitleSpace)/2.0;
            self.titleLabel.ws_x = margin;
            self.imageView.ws_x = self.titleLabel.ws_maxX + self.imageAndTitleSpace;
            
        }break;
        case WSButtonLayoutImageTop:
        {
            self.imageView.ws_centerX = self.titleLabel.ws_centerX = self.ws_width*0.5;
            CGFloat margin = (self.ws_height - (self.imageView.ws_height+self.titleLabel.ws_height) - self.imageAndTitleSpace)/2.0;
            self.imageView.ws_y = margin;
            self.titleLabel.ws_y = self.imageView.ws_maxY + self.imageAndTitleSpace;
        }break;
        case WSButtonLayoutImageBottom:
        {
            self.imageView.ws_centerX = self.titleLabel.ws_centerX = self.ws_width*0.5;
            CGFloat margin = (self.ws_height - (self.imageView.ws_height+self.titleLabel.ws_height) - self.imageAndTitleSpace)/2.0;
            self.titleLabel.ws_y = margin;
            self.imageView.ws_y = self.titleLabel.ws_maxY + self.imageAndTitleSpace;
            
        }break;
        default:
            break;
    }
}


@end

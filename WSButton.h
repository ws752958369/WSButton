//
//  WSButton.h
//  自定义Button图片和Title布局
//
//  Created by wangsheng on 2018/1/23.
//  Copyright © 2018年 wangsheng. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    WSButtonLayoutNormal = 0,       //图片左，文字右
    WSButtonLayoutImageRight = 1,   //图片右，文字左
    WSButtonLayoutImageTop = 2,     //图片上，文字下
    WSButtonLayoutImageBottom = 3,  //图片下，文字上
} WSButtonLayoutType;

@interface WSButton : UIButton
/**button内部布局样式*/
@property (nonatomic,assign)WSButtonLayoutType buttonLayoutType;
/**图片和title之间的间距*/
@property (nonatomic,assign)CGFloat imageAndTitleSpace;
- (instancetype)initWithFrame:(CGRect)frame WithButtonType:(WSButtonLayoutType)buttonType;
@end

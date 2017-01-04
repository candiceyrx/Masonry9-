//
//  CustomView.m
//  Masonry自动布局学习
//
//  Created by Candice on 16/8/23.
//  Copyright © 2016年 刘灵. All rights reserved.
//

#import "CustomView.h"
#import "Masonry.h"

#define HScreen [[UIScreen mainScreen] bounds].size.height
#define WScreen [[UIScreen mainScreen] bounds].size.width
// 屏幕宽度
#define SCREEN_WIDTH    [[UIScreen mainScreen] applicationFrame].size.width
// 屏幕高度
#define SCREEN_HEIGHT   [[UIScreen mainScreen] applicationFrame].size.height

@implementation CustomView

- (instancetype)initWithImage:(NSString *)imageName Text:(NSString *)text {
    if (self = [super init]) {
        _signImage = [UIImageView new];
        _signImage.image = [UIImage imageNamed:imageName];
        [self addSubview:_signImage];
        
        _titleLable = [UILabel new];
        _titleLable.textAlignment = NSTextAlignmentCenter;
        _titleLable.numberOfLines = 0;
        [_titleLable sizeToFit];
        _titleLable.text = text;
        [self addSubview:_titleLable];
    }
    return self;
}

- (void)layoutSubviews {
   
    if (HScreen <= 480) {
        [self.signImage mas_makeConstraints:^(MASConstraintMaker *make){
            make.centerX.mas_equalTo(self.mas_centerX);
            make.top.equalTo(self.mas_top).with.offset(3);
            make.size.mas_equalTo(CGSizeMake(50, 50));
        }];
        
        [self.titleLable mas_makeConstraints:^(MASConstraintMaker *make){
            make.top.equalTo(self.signImage.mas_bottom);
            make.left.equalTo(self.mas_left);
            make.right.equalTo(self.mas_right);
            make.bottom.equalTo(self.mas_bottom);
        }];
    }else if (HScreen <= 568){
        [self.signImage mas_makeConstraints:^(MASConstraintMaker *make){
            make.centerX.mas_equalTo(self.mas_centerX);
            make.top.equalTo(self.mas_top).with.offset(3);
            make.size.mas_equalTo(CGSizeMake(64, 64));
        }];
        
        [self.titleLable mas_makeConstraints:^(MASConstraintMaker *make){
            make.top.equalTo(self.signImage.mas_bottom);
            make.left.equalTo(self.mas_left);
            make.right.equalTo(self.mas_right);
            make.bottom.equalTo(self.mas_bottom);
        }];
    }else if (HScreen <= 667){
        [self.signImage mas_makeConstraints:^(MASConstraintMaker *make){
            make.centerX.mas_equalTo(self.mas_centerX);
            make.top.equalTo(self.mas_top).with.offset(3);
            make.size.mas_equalTo(CGSizeMake(74, 74));
        }];
        
        [self.titleLable mas_makeConstraints:^(MASConstraintMaker *make){
            make.top.equalTo(self.signImage.mas_bottom);
            make.left.equalTo(self.mas_left);
            make.right.equalTo(self.mas_right);
            make.bottom.equalTo(self.mas_bottom);
        }];
    }else{
        [self.signImage mas_makeConstraints:^(MASConstraintMaker *make){
            make.centerX.mas_equalTo(self.mas_centerX);
            make.top.equalTo(self.mas_top).with.offset(3);
            make.size.mas_equalTo(CGSizeMake(84, 84));
        }];
        
        [self.titleLable mas_makeConstraints:^(MASConstraintMaker *make){
            make.top.equalTo(self.signImage.mas_bottom);
            make.left.equalTo(self.mas_left);
            make.right.equalTo(self.mas_right);
            make.bottom.equalTo(self.mas_bottom);
        }];
    }
}
@end

//
//  CustomView.h
//  Masonry自动布局学习
//
//  Created by Candice on 16/8/23.
//  Copyright © 2016年 刘灵. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomView : UIView

@property (nonatomic, strong) UIImageView *signImage;
@property (nonatomic, strong) UILabel *titleLable;

- (instancetype)initWithImage:(NSString *)imageName Text:(NSString *)text;
@end

//
//  ViewController.m
//  Masonry自动布局学习
//
//  Created by Candice on 16/8/19.
//  Copyright © 2016年 刘灵. All rights reserved.
//

#import "ViewController.h"

#import "Masonry.h"

#import "UIView+Masonry_LL.h"

#import "CustomView.h"

#import "JGProgressHUD.h"

#define HScreen [[UIScreen mainScreen] bounds].size.height
#define WScreen [[UIScreen mainScreen] bounds].size.width
// 屏幕宽度
#define SCREEN_WIDTH    [[UIScreen mainScreen] applicationFrame].size.width
// 屏幕高度
#define SCREEN_HEIGHT   [[UIScreen mainScreen] applicationFrame].size.height

@interface ViewController ()
{
    CGFloat w;
    CGFloat h;
}
@property (nonatomic, strong) UIView *view1;
@property (nonatomic, strong) UIView *view2;

@property (nonatomic, strong) UIView *luoboView;
@property (nonatomic, strong) UIView *messageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    if (HScreen <= 480) {
        h = HScreen-176;
    }else if (HScreen <= 568){
        h = HScreen-204;
    }else if (HScreen <= 667){
        h = HScreen-224;
    }else{
        h = HScreen-244;
    }
    
    NSLog(@"6s下屏幕的宽=%f",self.view.bounds.size.width);
    NSLog(@"6s下屏幕的高=%f",[[UIScreen mainScreen] bounds].size.height);
    
    UIView *head = [UIView new];
    head.backgroundColor = [UIColor redColor];
    [self.view addSubview:head];
    
    UIImageView *imageView = [UIImageView new];
    imageView.image = [UIImage imageNamed:@"home_bg"];
    [self.view addSubview:imageView];
    
    UIView * middle = [UIView new];
    middle.backgroundColor = [UIColor colorWithRed:245 green:245 blue:245 alpha:0.6];
    [self.view addSubview:middle];
    
    UIView *sv = [UIView new];
    sv.backgroundColor = [UIColor colorWithRed:245 green:245 blue:245 alpha:0.6];
    [self.view addSubview:sv];
    
    [imageView mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(head.mas_bottom);
        make.left.equalTo(self.view.mas_left);
        make.right.equalTo(self.view.mas_right);
        make.bottom.equalTo(self.view.mas_bottom);
    }];
    
    [head mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left);
        make.right.equalTo(self.view.mas_right);
        make.top.equalTo(self.view.mas_top);
        make.bottom.equalTo(middle.mas_top);
        make.height.mas_equalTo(h/2);
    }];
    
    if (HScreen <= 480) {
        [middle mas_makeConstraints:^(MASConstraintMaker *make){
            make.left.equalTo(self.view.mas_left);
            make.right.equalTo(self.view.mas_right);
            make.top.equalTo(head.mas_bottom);
        }];
        
        [sv mas_makeConstraints:^(MASConstraintMaker *make){
            make.left.equalTo(self.view.mas_left);
            make.right.equalTo(self.view.mas_right);
            make.top.equalTo(middle.mas_bottom).with.offset(10);
            make.bottom.equalTo(self.view.mas_bottom);
            make.height.mas_equalTo(176);
        }];
    }else if (HScreen <= 568){
        [middle mas_makeConstraints:^(MASConstraintMaker *make){
            make.left.equalTo(self.view.mas_left);
            make.right.equalTo(self.view.mas_right);
            make.top.equalTo(head.mas_bottom);
        }];
        
        [sv mas_makeConstraints:^(MASConstraintMaker *make){
            make.left.equalTo(self.view.mas_left);
            make.right.equalTo(self.view.mas_right);
            make.top.equalTo(middle.mas_bottom).with.offset(10);
            make.bottom.equalTo(self.view.mas_bottom);
            make.height.mas_equalTo(204);
        }];
    }else if (HScreen <= 667){
        [middle mas_makeConstraints:^(MASConstraintMaker *make){
            make.left.equalTo(self.view.mas_left);
            make.right.equalTo(self.view.mas_right);
            make.top.equalTo(head.mas_bottom);
        }];
        
        [sv mas_makeConstraints:^(MASConstraintMaker *make){
            make.left.equalTo(self.view.mas_left);
            make.right.equalTo(self.view.mas_right);
            make.top.equalTo(middle.mas_bottom).with.offset(10);
            make.bottom.equalTo(self.view.mas_bottom);
            make.height.mas_equalTo(224);
        }];
    }else{
        [middle mas_makeConstraints:^(MASConstraintMaker *make){
            make.left.equalTo(self.view.mas_left);
            make.right.equalTo(self.view.mas_right);
            make.top.equalTo(head.mas_bottom);
        }];
        
        [sv mas_makeConstraints:^(MASConstraintMaker *make){
            make.left.equalTo(self.view.mas_left);
            make.right.equalTo(self.view.mas_right);
            make.top.equalTo(middle.mas_bottom).with.offset(10);
            make.bottom.equalTo(self.view.mas_bottom);
            make.height.mas_equalTo(244);
        }];
    }
    
    
    CustomView *cv1 = [[CustomView alloc]initWithImage:@"home_vip_wenhua" Text:@"文化年展"];
    CustomView *cv2 = [[CustomView alloc]initWithImage:@"home_vip_call" Text:@"呼叫服务"];
    CustomView *cv3 = [[CustomView alloc]initWithImage:@"home_vip_data" Text:@"大会资料"];
    //CustomView *cv4 = [[CustomView alloc]initWithImage:@"home_vip_meeting" Text:@"大会日程"];
    CustomView *cv5 = [[CustomView alloc]initWithImage:@"home_vip_news" Text:@"大会新闻"];
    CustomView *cv6 = [[CustomView alloc]initWithImage:@"home_vip_schedule" Text:@"我的日程"];
    CustomView *cv7 = [[CustomView alloc]initWithImage:@"home_vip_wirte" Text:@"嘉宾留言"];
    //CustomView *cv8 = [[CustomView alloc]initWithImage:@"home_vip_mapnav" Text:@"地图导航"];
    
    [sv addSubview:cv1];
    [sv addSubview:cv2];
    [sv addSubview:cv3];
   // [sv addSubview:cv4];
    [sv addSubview:cv5];
    [sv addSubview:cv6];
    [sv addSubview:cv7];
   // [sv addSubview:cv8];
    
    if (HScreen <= 480) {
        [cv1 mas_makeConstraints:^(MASConstraintMaker *make){
            make.centerY.equalTo(@[cv2,cv3]);
            make.centerX.equalTo(cv5);
            make.size.mas_equalTo(CGSizeMake(80, 88));
        }];
        
        [cv5 mas_makeConstraints:^(MASConstraintMaker *make){
            make.centerY.equalTo(@[cv6,cv7]);
            make.size.mas_equalTo(CGSizeMake(80, 88));
        }];
        
        [cv2 mas_makeConstraints:^(MASConstraintMaker *make){
            make.size.mas_equalTo(CGSizeMake(80, 88));
        }];
        
        [cv3 mas_makeConstraints:^(MASConstraintMaker *make){
            make.size.mas_equalTo(CGSizeMake(80,88));
        }];
        
//        [cv4 mas_makeConstraints:^(MASConstraintMaker *make){
//            make.size.mas_equalTo(CGSizeMake(80, 88));
//        }];
        
        [cv6 mas_makeConstraints:^(MASConstraintMaker *make){
            make.size.mas_equalTo(CGSizeMake(80, 88));
        }];
        
        [cv7 mas_makeConstraints:^(MASConstraintMaker *make){
            make.size.mas_equalTo(CGSizeMake(80, 88));
        }];
        
//        [cv8 mas_makeConstraints:^(MASConstraintMaker *make){
//            make.size.mas_equalTo(CGSizeMake(80, 88));
//        }];
    }else if (HScreen <= 568){
        [cv1 mas_makeConstraints:^(MASConstraintMaker *make){
            make.centerY.equalTo(@[cv2,cv3]);
            make.centerX.equalTo(cv5);
            make.size.mas_equalTo(CGSizeMake(80, 102));
        }];
        
        [cv5 mas_makeConstraints:^(MASConstraintMaker *make){
            make.centerY.equalTo(@[cv6,cv7]);
            make.size.mas_equalTo(CGSizeMake(80, 102));
        }];
        
        [cv2 mas_makeConstraints:^(MASConstraintMaker *make){
            make.size.mas_equalTo(CGSizeMake(80, 102));
        }];
        
        [cv3 mas_makeConstraints:^(MASConstraintMaker *make){
            make.size.mas_equalTo(CGSizeMake(80,102));
        }];
        
//        [cv4 mas_makeConstraints:^(MASConstraintMaker *make){
//            make.size.mas_equalTo(CGSizeMake(80, 102));
//        }];
        
        [cv6 mas_makeConstraints:^(MASConstraintMaker *make){
            make.size.mas_equalTo(CGSizeMake(80, 102));
        }];
        
        [cv7 mas_makeConstraints:^(MASConstraintMaker *make){
            make.size.mas_equalTo(CGSizeMake(80, 102));
        }];
        
//        [cv8 mas_makeConstraints:^(MASConstraintMaker *make){
//            make.size.mas_equalTo(CGSizeMake(80, 102));
//        }];
    }else if (HScreen <= 667){
        [cv1 mas_makeConstraints:^(MASConstraintMaker *make){
            make.centerY.equalTo(@[cv2,cv3]);
            make.centerX.equalTo(cv5);
            make.size.mas_equalTo(CGSizeMake(93.75, 112));
        }];
        
        [cv5 mas_makeConstraints:^(MASConstraintMaker *make){
            make.centerY.equalTo(@[cv6,cv7]);
            make.size.mas_equalTo(CGSizeMake(93.75, 112));
        }];
        
        [cv2 mas_makeConstraints:^(MASConstraintMaker *make){
            make.size.mas_equalTo(CGSizeMake(93.75, 112));
        }];
        
        [cv3 mas_makeConstraints:^(MASConstraintMaker *make){
            make.size.mas_equalTo(CGSizeMake(93.75,112));
        }];
        
//        [cv4 mas_makeConstraints:^(MASConstraintMaker *make){
//            make.size.mas_equalTo(CGSizeMake(93.75, 112));
//        }];
        
        [cv6 mas_makeConstraints:^(MASConstraintMaker *make){
            make.size.mas_equalTo(CGSizeMake(93.75, 112));
        }];
        
        [cv7 mas_makeConstraints:^(MASConstraintMaker *make){
            make.size.mas_equalTo(CGSizeMake(93.75, 112));
        }];
        
//        [cv8 mas_makeConstraints:^(MASConstraintMaker *make){
//            make.size.mas_equalTo(CGSizeMake(93.75, 112));
//        }];
    }else{
        [cv1 mas_makeConstraints:^(MASConstraintMaker *make){
            make.centerY.equalTo(@[cv2,cv3]);
            make.centerX.equalTo(cv5);
            make.size.mas_equalTo(CGSizeMake(103.5, 122));
        }];
        
        [cv5 mas_makeConstraints:^(MASConstraintMaker *make){
            make.centerY.equalTo(@[cv6,cv7]);
            make.size.mas_equalTo(CGSizeMake(103.5, 122));
        }];
        
        [cv2 mas_makeConstraints:^(MASConstraintMaker *make){
            make.size.mas_equalTo(CGSizeMake(103.5, 122));
        }];
        
        [cv3 mas_makeConstraints:^(MASConstraintMaker *make){
            make.size.mas_equalTo(CGSizeMake(103.5,122));
        }];
        
//        [cv4 mas_makeConstraints:^(MASConstraintMaker *make){
//            make.size.mas_equalTo(CGSizeMake(103.5, 122));
//        }];
        
        [cv6 mas_makeConstraints:^(MASConstraintMaker *make){
            make.size.mas_equalTo(CGSizeMake(103.5, 122));
        }];
        
        [cv7 mas_makeConstraints:^(MASConstraintMaker *make){
            make.size.mas_equalTo(CGSizeMake(103.5, 122));
        }];
        
//        [cv8 mas_makeConstraints:^(MASConstraintMaker *make){
//            make.size.mas_equalTo(CGSizeMake(103.5, 122));
//        }];
    }
    
    [sv distributeSpacingHorizontallyWith:@[cv1,cv2,cv3]];
    [sv distributeSpacingHorizontallyWith:@[cv5,cv6,cv7]];
    [sv distributeSpacingVerticallyWith:@[cv1,cv5]];

}

- (void)viewWillAppear:(BOOL)animated {
    JGProgressHUD *progress = [JGProgressHUD progressHUDWithStyle:JGProgressHUDStyleLight];
    progress.textLabel.text = @"Loading...";
    [progress showInView:self.view];
    [progress dismissAfterDelay:3.0];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

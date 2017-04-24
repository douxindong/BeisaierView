//
//  ViewController.m
//  dxd_贝塞尔
//
//  Created by 窦心东 on 2017/4/20.
//  Copyright © 2017年 窦心东. All rights reserved.
//

#import "ViewController.h"
#import "beisaierView.h"
@interface ViewController ()

{
    beisaierView *ber;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    ber = [[beisaierView alloc] initWithFrame:CGRectMake(30, 50, 350, 350)];
    
    ber.backgroundColor = [UIColor whiteColor];
    ber.header_image = [UIImage imageNamed:@"HEAL.jpg"];
    ber.headerimageWidth = 40;
    ber.value_array = @[@"40",@"50",@"80",@"50",@"90",@"50",@"70",@"90",@"30"];
    ber.title_array = @[@"阴虚",@"痰湿",@"温热",@"血瘀",@"气郁",@"特禀",@"平和",@"气虚",@"阳虚"];
    [self.view addSubview:ber];
    

    
    
    [self Da_Guang_Gao];
    
}
- (void)Da_Guang_Gao{

    CGFloat margin = 10;
    NSArray *imagearray = @[@"appStore.png",@"wechat.png",@"HEAL.jpg"];
    NSArray *imagearraytitle = @[@"appstore下载",@"微信公众号",@"HEAL小程序"];
    for (int i = 0; i<imagearray.count; i++) {
        
        UIImageView *imageview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imagearray[i]]];
        imageview.frame = CGRectMake(margin+i*(120+margin), CGRectGetMaxY(ber.frame)+30, 120, 120);
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10+i*(120+margin),  CGRectGetMaxY(imageview.frame)+30, 120, 40)];
        label.textAlignment = NSTextAlignmentCenter;
        label.text = imagearraytitle[i];
        [self.view addSubview:label];
        [self.view addSubview:imageview];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

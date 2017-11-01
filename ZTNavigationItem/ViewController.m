//
//  ZTNavigationViewController.h
//  ZTNavigationItem
//
//  Created by ZT on 2017/10/31.
//  Copyright © 2017年 ZT. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+BarButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //1、使用方法如下，因为我设置了所有二级页面左侧按钮为返回，所以这一行注释掉。如果在二级页面需要改变左侧按钮及点击事件，直接打开注释就可以了
    //[self addLeftBarButtonWithImage:[UIImage imageNamed:@"聚会点赞红色"] action:@selector(leftBarbuttonAction)];
    
    //2、右侧两个item
    [self addRightTwoBarButtonsWithFirstImage:[UIImage imageNamed:@"聚会点赞红色"] firstAction:@selector(rightFirstBarbuttonAction) secondImage:[UIImage imageNamed:@"聚会点赞红色"] secondAction:@selector(rightSecondBarbuttonAction)];
    
    //3、右侧四个item
    //[self addRightFourBarButtonsWithFirstImage:[UIImage imageNamed:@"聚会点赞红色"] firstAction:@selector(rightFirstBarbuttonAction) secondImage:[UIImage imageNamed:@"聚会点赞红色"] secondAction:@selector(rightFirstBarbuttonAction) thirdImage:[UIImage imageNamed:@"聚会点赞红色"] thirdAction:@selector(rightFirstBarbuttonAction) fourthImage:[UIImage imageNamed:@"聚会点赞红色"] fourthAction:@selector(rightFirstBarbuttonAction)];
}

- (void)leftBarbuttonAction
{
    NSLog(@"左边item");
}

- (void)rightFirstBarbuttonAction
{
    NSLog(@"从最右侧开始，第一个");
}

- (void)rightSecondBarbuttonAction
{
    ViewController *vc = [ViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

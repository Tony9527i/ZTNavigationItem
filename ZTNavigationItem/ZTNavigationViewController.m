//
//  ZTNavigationViewController.h
//  ZTNavigationItem
//
//  Created by ZT on 2017/10/31.
//  Copyright © 2017年 ZT. All rights reserved.
//

#import "ZTNavigationViewController.h"
#import "UIViewController+BarButton.h"

#define kScreenWidth  ([UIScreen mainScreen].bounds.size.width)

@interface ZTNavigationViewController ()

@end

@implementation ZTNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 44)];
        view.backgroundColor = [UIColor clearColor];
        UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeCustom];
        firstButton.frame = CGRectMake(0, 0, 40, 44);
        [firstButton setImage:[UIImage imageNamed:@"return"] forState:UIControlStateNormal];
        [firstButton addTarget:self action:@selector(leftBarButtonAction) forControlEvents:UIControlEventTouchUpInside];
        firstButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [firstButton setImageEdgeInsets:UIEdgeInsetsMake(0, 5 * kScreenWidth/375.0, 0, 0)];
        
        UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:firstButton];
        
        viewController.navigationItem.leftBarButtonItem = leftBarButtonItem;
    }
    [super pushViewController:viewController animated:animated];
}

- (void)leftBarButtonAction
{
    [self popViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

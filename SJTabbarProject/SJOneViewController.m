//
//  SJOneViewController.m
//  SJTabbarProject
//
//  Created by SPIREJ on 16/1/22.
//  Copyright © 2016年 SPIREJ. All rights reserved.
//

#import "SJOneViewController.h"
#import "SJNextViewController.h"

@interface SJOneViewController ()

@end

@implementation SJOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setNavTitle:@"杀敌"];
    [self setShowRightButton:YES];

    [self setUpUI];
}

- (void)setUpUI{
    UIButton *nextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    nextBtn.frame = CGRectMake((kDeviceWidth-120)/2,KDeviceHeight/2-200, 120, 50);
    [nextBtn setTitle:@"下一级菜单" forState:UIControlStateNormal];
    [nextBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    nextBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [nextBtn addTarget:self action:@selector(netxBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nextBtn];
    
    [self.rightButton setImage:[UIImage imageNamed:@"battle_win_death"] forState:UIControlStateNormal];
}
-(void)netxBtnClick{
    SJNextViewController *nextVC = [[SJNextViewController alloc] init];
    nextVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:nextVC animated:YES];
}

- (void)rightBarButtonItemTouchedUpInSide
{
    //根据自己需要实现
    UIAlertView *alret = [[UIAlertView alloc] initWithTitle:@"" message:@"hello any body" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alret show];
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

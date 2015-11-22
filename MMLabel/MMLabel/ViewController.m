//
//  ViewController.m
//  MMLabel
//
//  Created by 鸟不拉屎大王 on 15/11/22.
//  Copyright © 2015年 com.iScarlett.com. All rights reserved.
//

#import "ViewController.h"
#import "MMLabel.h"

@interface ViewController ()
{
    MMLabel *mmLabel;
    MMLabel *mmLabel1;
    MMLabel *mmLabel2;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    mmLabel=[[MMLabel alloc]initWithFrame:CGRectMake(0, 0, 300, 20)];
    mmLabel.center=CGPointMake(self.view.center.x, 100);
    mmLabel.font=[UIFont systemFontOfSize:16];
    mmLabel.keyWordColor=[UIColor blueColor];
    mmLabel.keyWordFont=[UIFont systemFontOfSize:22];
    mmLabel.text=@"也许时间是一种解药，时间也是我现在正服下的毒药.";
    
    [self.view addSubview:mmLabel];
    
    
    mmLabel1=[[MMLabel alloc]initWithFrame:CGRectMake(0, 0, 300, 20)];
    mmLabel1.center=CGPointMake(self.view.center.x, 140);
    mmLabel1.font=[UIFont systemFontOfSize:16];
    mmLabel1.keyWordColor=[UIColor redColor];
    mmLabel1.keyWordFont=[UIFont systemFontOfSize:16];
    mmLabel1.text=@"没有什么能够阻挡，你对自由的向往.";
    
    [self.view addSubview:mmLabel1];
    
    mmLabel2=[[MMLabel alloc]initWithFrame:CGRectMake(0, 0, 300, 20)];
    mmLabel2.center=CGPointMake(self.view.center.x, 180);
    mmLabel2.font=[UIFont systemFontOfSize:16];
    mmLabel2.textColor=[UIColor blueColor];
    mmLabel2.keyWordColor=[UIColor greenColor];
    mmLabel2.keyWordFont=[UIFont systemFontOfSize:20];
    mmLabel2.text=@"开始的开始，我们都是孩子.";
    
    [self.view addSubview:mmLabel2];
    
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.frame=CGRectMake(0, 0, 100, 60);
    button.center=CGPointMake(self.view.center.x, 340);
    [button setTitle:@"设置关键字" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(button_Click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)button_Click
{
    mmLabel.keyWord=@"时间";
    mmLabel1.keyWord=@"自由";
    mmLabel2.keyWord=@"我们";
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

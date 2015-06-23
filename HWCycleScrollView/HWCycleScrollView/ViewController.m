//
//  ViewController.m
//  HWCycleScrollView
//
//  Created by Lee on 15/6/23.
//  Copyright (c) 2015年 Havi. All rights reserved.
//

#import "ViewController.h"
#import "SDCycleScrollView.h"

@interface ViewController ()<SDCycleScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SDCycleScrollView * cycleScrollView = [[SDCycleScrollView alloc]initWithFrame:CGRectMake(0, 150, self.view.frame.size.width, 200)];
    
    cycleScrollView.delegate = self;
    
    cycleScrollView.imageURLStringsGroup = @[@"http://ww3.sinaimg.cn/bmiddle/9d857daagw1er7lgd1bg1j20ci08cdg3.jpg",
                                             @"http://ww4.sinaimg.cn/bmiddle/763cc1a7jw1esr747i13xj20dw09g0tj.jpg",
                                             @"http://ww4.sinaimg.cn/bmiddle/67307b53jw1esr4z8pimxj20c809675d.jpg"];
    cycleScrollView.titlesGroup = @[@"picture0",@"picture1",@"picture2"];
    cycleScrollView.autoScrollTimeInterval = 3.0;
    cycleScrollView.pageControlAliment = 0;
    cycleScrollView.dotColor = [UIColor whiteColor];
    
    [self.view addSubview:cycleScrollView];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark cycleScrollViewDelegate

-(void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index{
    
    NSLog(@"%ld",index);

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

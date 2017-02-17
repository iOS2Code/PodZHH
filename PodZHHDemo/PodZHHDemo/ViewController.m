//
//  ViewController.m
//  PodZHHDemo
//
//  Created by  ZhuHong on 2017/2/16.
//  Copyright © 2017年 CoderHG. All rights reserved.
//

#import "ViewController.h"
#import <Public.h>
#import <PodZHHPrivate.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 公开的CocoaPods库
    [Public publicTest];
    
    // 私有的
    [PodZHHPrivate PodZHHPrivateTest];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

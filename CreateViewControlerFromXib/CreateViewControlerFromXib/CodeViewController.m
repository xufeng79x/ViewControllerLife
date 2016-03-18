//
//  CodeViewController.m
//  CreateViewControlerFromXib
//
//  Created by apple on 16/3/17.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CodeViewController.h"

@interface CodeViewController ()

@end

@implementation CodeViewController

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(instancetype)init
{
    NSLog(@"CodeViewController:init");
    self = [super init];
    return self;
}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    NSLog(@"CodeViewController:initWithNibName the nibName = %@", nibNameOrNil);
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
    
}


- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        NSLog(@"CodeViewController:initWithCoder");
    }
    return self;
}

-(void)awakeFromNib{
    NSLog(@"CodeViewController:awakeFromNib");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    button.titleLabel.text = @"back from CodeViewController [to rootController";
    [button addTarget:self action:@selector(backToRootController) forControlEvents:UIControlEventTouchDown];
    button.backgroundColor = [UIColor greenColor];
    [self.view addSubview:button];
    
    self.view.backgroundColor = [UIColor redColor];
    NSLog(@"CodeViewController:viewDidLoad");
}



-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"CodeViewController:viewWillAppear");
}

-(void)viewWillLayoutSubviews{
    NSLog(@"CodeViewController:viewWillLayoutSubviews");
}

-(void)viewDidLayoutSubviews{
    NSLog(@"CodeViewController:viewDidLayoutSubviews");
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"CodeViewController:viewDidAppear");
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"CodeViewController:viewWillDisappear");
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"CodeViewController:viewDidDisappear");
}

-(void)backToRootController
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end

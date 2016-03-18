//
//  MyViewController.m
//  CreateViewControlerFromXib
//
//  Created by apple on 16/3/17.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "MyViewController.h"
#import "MyXibView.h"

@interface MyViewController ()

@end

@implementation MyViewController


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(instancetype)init
{
    NSLog(@"MyViewController:init");
    self = [super init];
    return self;
}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    NSLog(@"xibController:initWithNibName the nibName = %@", nibNameOrNil);
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
    
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    NSLog(@"xibController:initWithCoder");
    self = [super initWithCoder:coder];
    return self;
}

-(void)awakeFromNib{
    NSLog(@"xibController:awakeFromNib");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"xibController:viewDidLoad");
    
    // 用于证明 root view就是指向xib文件中的view
    [self.view performSelector:@selector(actionMyXibView)];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"xibController:viewWillAppear");
}

-(void)viewWillLayoutSubviews{
    NSLog(@"xibController:viewWillLayoutSubviews");
}

-(void)viewDidLayoutSubviews{
    NSLog(@"xibController:viewDidLayoutSubviews");
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"xibController:viewDidAppear");
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"xibController:viewWillDisappear");
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"xibController:viewDidDisappear");
}


- (IBAction)backToRoot:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end

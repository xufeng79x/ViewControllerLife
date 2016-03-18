//
//  StoryBoradViewController.m
//  CreateViewControlerFromXib
//
//  Created by apple on 16/3/17.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "StoryBoradViewController.h"
#import "MyStoryView.h"

@interface StoryBoradViewController ()

@end

@implementation StoryBoradViewController


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
     NSLog(@"storyBoradController:initWithNibName the nibName = %@", nibNameOrNil);
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];

    return self;
    
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    NSLog(@"storyBoradController:initWithCoder");
    self = [super initWithCoder:coder];
    return self;
}

-(void)awakeFromNib{
    NSLog(@"storyBoradController:awakeFromNib");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"storyBoradController:viewDidLoad");
    
    // 用于证明 root view就是指向storybord中的view
    [self.view performSelector:@selector(actionMyStoryView)];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"storyBoradController:viewWillAppear");
}

-(void)viewWillLayoutSubviews{
    NSLog(@"storyBoradController:viewWillLayoutSubviews");
}

-(void)viewDidLayoutSubviews{
    NSLog(@"storyBoradController:viewDidLayoutSubviews");
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"storyBoradController:viewDidAppear");
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"storyBoradController:viewWillDisappear");
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"storyBoradController:viewDidDisappear");
}

- (IBAction)backToRoot:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end

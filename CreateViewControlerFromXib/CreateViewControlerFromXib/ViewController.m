//
//  ViewController.m
//  CreateViewControlerFromXib
//
//  Created by apple on 16/3/17.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController.h"
#import "CodeViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (IBAction)showControllerPress:(id)sender {
    NSLog(@"Show ViewController!");
    MyViewController *myViewController = [[MyViewController alloc]init];
    
    [self presentViewController:myViewController animated:YES completion:nil];
}
- (IBAction)showCodeViewController:(id)sender {
    CodeViewController *codeViewCOntroller = [[CodeViewController alloc]init];
     [self presentViewController:codeViewCOntroller animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
     NSLog(@"rootViewController:initWithNibName the nibName = %@", nibNameOrNil);
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
    
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        NSLog(@"rootViewController:initWithCoder");
    }
    return self;
}

-(void)awakeFromNib{
    NSLog(@"rootViewController:awakeFromNib");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"rootViewController:viewDidLoad");
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"rootViewController:viewWillAppear");
}

-(void)viewWillLayoutSubviews{
    NSLog(@"rootViewController:viewWillLayoutSubviews");
}

-(void)viewDidLayoutSubviews{
    NSLog(@"rootViewController:viewDidLayoutSubviews");
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"rootViewController:viewDidAppear");
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"rootViewController:viewWillDisappear");
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"rootViewController:viewDidDisappear");
}



@end

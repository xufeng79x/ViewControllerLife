//
//  MyStoryView.m
//  CreateViewControlerFromXib
//
//  Created by apple on 16/3/18.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "MyStoryView.h"

@interface MyStoryView()
@property (weak, nonatomic) IBOutlet UIButton *button;


@end

@implementation MyStoryView


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)awakeFromNib{
    NSLog(@"MyStoryView:awakeFromNib");
}

-(void) actionMyStoryView
{
    NSLog(@"I am a MyStoryView instance!");
}
@end

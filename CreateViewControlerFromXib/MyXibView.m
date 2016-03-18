//
//  MyXibView.m
//  CreateViewControlerFromXib
//
//  Created by apple on 16/3/18.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "MyXibView.h"

@interface MyXibView ()
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation MyXibView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)awakeFromNib{
    NSLog(@"MyXibView:awakeFromNib");
}



-(void) actionMyXibView
{
    NSLog(@"I am a MyXibView instance!");
}

@end

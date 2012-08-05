//
//  ViewController.m
//  CollisionTest
//
//  Created by 誠也 前田 on 12/08/05.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "ImageDragView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //目標ビュー
    _viewA = [[UIView alloc]initWithFrame:CGRectMake(10, 10, 150, 200)];
    _viewA.backgroundColor = [UIColor greenColor];
    [self.view addSubview:_viewA];
    
    //画像1
    ImageDragView *image = [[ImageDragView alloc] initWithImage:[UIImage imageNamed:@"xbox.png"]];
    image.frame = CGRectMake(50, 300, image.frame.size.width, image.frame.size.height);
    image.userInteractionEnabled = YES;
    [self.view addSubview:image];
    [image release];
    
    //画像2
    ImageDragView *image2 = [[ImageDragView alloc] initWithImage:[UIImage imageNamed:@"xbox.png"]];
    image2.frame = CGRectMake(140, 300, image2.frame.size.width, image2.frame.size.height);
    image2.userInteractionEnabled = YES;
    [self.view addSubview:image2];
    [image2 release];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

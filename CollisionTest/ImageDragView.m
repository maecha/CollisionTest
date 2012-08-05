//
//  ImageDragView.m
//  CollisionTest
//
//  Created by 誠也 前田 on 12/08/05.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ImageDragView.h"

@implementation ImageDragView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

//画面タッチで呼ばれる
- (void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event
{
    
    touchBeganPoint = [[touches anyObject] locationInView:self];
}

//画面ドラッグで呼ばれる
- (void) touchesMoved:(NSSet*)touches withEvent:(UIEvent*)event
{
    CGPoint point = [[touches anyObject] locationInView:self];
	CGRect frame = [self frame];
	frame.origin.x += point.x - touchBeganPoint.x;
	frame.origin.y += point.y - touchBeganPoint.y;
	[self setFrame:frame];
    
    UIView *viewAField = [[UIView alloc]initWithFrame:CGRectMake(10, 10, 150, 200)];
    if (CGRectIntersectsRect(self.frame, viewAField.frame)) {
        NSLog(@"do do しようぜ！");
    }
    [viewAField release];
}

@end

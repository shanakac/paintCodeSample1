//
//  ButtonView.m
//  paintCodeSample1
//
//  Created by Indika Gunawardana on 4/10/15.
//  Copyright (c) 2015 test. All rights reserved.
//

#import "ButtonView.h"

@implementation ButtonView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)drawRect:(CGRect)rect {
    //paintCode tool generate code
    //// General Declarations
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    UIColor* gradientColor = [UIColor colorWithRed: 0.363 green: 0 blue: 0 alpha: 1];
    UIColor* gradientColor2 = [UIColor colorWithRed: 1 green: 0 blue: 0 alpha: 1];
    
    //// Gradient Declarations
    CGFloat gradientLocations[] = {0, 1};
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)@[(id)gradientColor.CGColor, (id)gradientColor2.CGColor], gradientLocations);
    
    ////Frames
    CGRect frame = CGRectMake(0, 0, 480, 49);
    
    //// buttonRed
    {
        //// roundRectangle Drawing
        CGRect roundRectangleRect = CGRectMake(CGRectGetMinX(frame), CGRectGetMinY(frame), floor((CGRectGetWidth(frame)) * 1.00000 + 0.5), floor((CGRectGetHeight(frame)) * 1.00000 + 0.5));
        UIBezierPath* roundRectanglePath = [UIBezierPath bezierPathWithRoundedRect: roundRectangleRect cornerRadius: 6];
        CGContextSaveGState(context);
        [roundRectanglePath addClip];
        CGContextDrawLinearGradient(context, gradient,
                                    CGPointMake(CGRectGetMidX(roundRectangleRect), CGRectGetMaxY(roundRectangleRect)),
                                    CGPointMake(CGRectGetMidX(roundRectangleRect), CGRectGetMinY(roundRectangleRect)),
                                    0);
        CGContextRestoreGState(context);
    }
    
    //testing GITHUB Add new comment - shanaka
    //shanaka chethana testing 1
    
    //// Cleanup
    CGGradientRelease(gradient);
    CGColorSpaceRelease(colorSpace);
    //Indika shanaka testing 1
    //shanaka testing 2
    //Indika2
    //Indika3 Shanaka
    //Indika4

}

@end

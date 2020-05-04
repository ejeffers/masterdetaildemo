//
//  GCMission+GCMission_UIKit.m
//  MasterDetailLayout
//
//  Created by Eric Jeffers on 5/4/20.
//  Copyright © 2020 Eric Jeffers. All rights reserved.
//

#import "GCMission+UIKit.h"


@implementation GCMission (GCMission_UIKit)

+ (UIImage *)imageFromColor:(UIColor *)color {
    CGRect rect = CGRectMake(0, 0, 100, 100);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (UIColor *)colorFromHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}


+ (UIImage *)imageFromHexString:(NSString *)imageHexString
{
    return [self imageFromColor:[self colorFromHexString:imageHexString]];
}


@end

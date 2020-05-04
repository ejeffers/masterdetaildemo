//
//  GCMission+GCMission_UIKit.h
//  MasterDetailLayout
//
//  Created by Eric Jeffers on 5/4/20.
//  Copyright © 2020 Eric Jeffers. All rights reserved.
//

#import "GCMission.h"

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@interface GCMission (GCMission_UIKit)

#pragma mark - helpers

+ (UIImage *)imageFromColor:(UIColor *)color;
+ (UIColor *)colorFromHexString:(NSString *)hexString;
+ (UIImage *)imageFromHexString:(NSString *)imageHexString;

@end

NS_ASSUME_NONNULL_END

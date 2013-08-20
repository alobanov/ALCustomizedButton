//
//  ALCustomizedButtonRed.m
//  ALCustomizedButtton
//
//  Created by Lobanov Aleksey on 20.08.13.
//  Copyright (c) 2013 Lobanov Aleksey. All rights reserved.
//

#import "ALCustomizedButtonSample.h"

@implementation ALCustomizedButtonSample

- (NSString *) bgNotmalImageName {
    return @"al_btnRedNormal.png";
}

- (NSString *) bgSelectedImageName {
    return @"al_btnRedNormal_selected.png";
}

- (UIColor *) shadowColor {
    return [UIColor grayColor];
}

- (CGSize) shadowSize {
    return CGSizeMake(0.0, 1.0);
}

- (UIFont *) labelFont {
    return [UIFont fontWithName:@"Arial" size:12.0];
}

- (UIColor *) labelNormalColor {
    return [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0];
}

- (UIColor *) labelSelectedColor {
    return [UIColor colorWithRed:61.0/255.0 green:62.0/255.0 blue:64.0/255.0 alpha:1.0];
}

- (NSInteger) leftCapWidth {
    return 6;
}

- (NSInteger) topCapHeight {
    return 6;
}

@end

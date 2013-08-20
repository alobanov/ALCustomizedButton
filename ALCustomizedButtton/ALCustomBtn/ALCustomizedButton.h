//
//  ALCustomizedButton.h
//  ALCustomizedButtton
//
//  Created by Lobanov Aleksey on 20.08.13.
//  Copyright (c) 2013 Lobanov Aleksey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ALCustomizedButton : UIButton

#pragma mark - Base setting for customized ALButton
- (NSString *) bgNotmalImageName;
- (NSString *) bgSelectedImageName;
- (UIColor *) shadowColor;
- (CGSize) shadowSize;
- (UIFont *) labelFont;
- (UIColor *) labelNormalColor;
- (UIColor *) labelSelectedColor;
- (NSInteger) leftCapWidth;
- (NSInteger) topCapHeight;

@end

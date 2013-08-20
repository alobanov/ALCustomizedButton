//
//  ALCustomizedButton.m
//  ALCustomizedButtton
//
//  Created by Lobanov Aleksey on 20.08.13.
//  Copyright (c) 2013 Lobanov Aleksey. All rights reserved.
//

#import "ALCustomizedButton.h"

@implementation ALCustomizedButton

#pragma mark - Init
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self customizeSkin];
    }
    return self;
}

- (id) initWithCoder:(NSCoder *) decoder {
    self = [super initWithCoder: decoder];
    if (self) {
        [self customizeSkin];
    }
    return self;
}

#pragma mark - Base setting for customized ALButton
- (NSString *) bgNotmalImageName {
    return @"al_btnNormal.png";
}

- (NSString *) bgSelectedImageName {
    return @"al_btnNormal_selected.png";
}

- (UIColor *) shadowColor {
    return [UIColor grayColor];
}

- (CGSize) shadowSize {
    return CGSizeMake(0.0, 1.0);
}

- (UIFont *) labelFont {
    return [UIFont fontWithName:@"Arial" size:32.0];
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

#pragma mark - update skin values
- (void) customizeSkin {
    // image
    UIImage *buttonImage = [[UIImage imageNamed:[self bgNotmalImageName]]
                            stretchableImageWithLeftCapWidth:[self leftCapWidth]
                                                topCapHeight:[self topCapHeight]];
    
    UIImage *buttonSelectedImage = [[UIImage imageNamed:[self bgSelectedImageName]]
                                    stretchableImageWithLeftCapWidth:[self leftCapWidth]
                                                        topCapHeight:[self topCapHeight]];
    
    // update canvas
    [self setBackgroundImage:buttonImage forState:UIControlStateNormal];
    [self setBackgroundImage:buttonSelectedImage forState:UIControlStateHighlighted];
    
    // shadow
    [self setTitleShadowColor:[self shadowColor] forState:UIControlStateNormal];
    [[self titleLabel] setShadowOffset:[self shadowSize]];
    
    // setup font
    [self setTitleColor:[self labelNormalColor] forState:UIControlStateNormal];
    [self setTitleColor:[self labelSelectedColor] forState:UIControlStateHighlighted];
    [[self titleLabel] setFont:[self labelFont]];
}

@end

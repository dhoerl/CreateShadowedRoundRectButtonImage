//
//  CreateButton.h
//  CreateShadowedRoundRectButtonImage
//
//  Created by David Hoerl on 10/28/13.
//  Copyright (c) 2013 dfh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CreateButton : NSObject

+ (UIColor *)backgroundColorForType:(UIKeyboardAppearance)type;

- (UIImage *)buttonImage:(CGSize)size type:(UIKeyboardAppearance)type;
- (UIImage *)altButtonImage:(CGSize)size type:(UIKeyboardAppearance)type;

@end

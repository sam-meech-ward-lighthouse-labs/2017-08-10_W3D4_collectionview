//
//  Movie.h
//  Movies
//
//  Created by Sam Meech-Ward on 2017-08-10.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Movie : NSObject

- (instancetype)initWithTitle:(NSString *)title posterImage:(UIImage *)posterImage;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, strong) UIImage *posterImage;

@end

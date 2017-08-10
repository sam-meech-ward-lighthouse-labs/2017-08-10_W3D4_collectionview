//
//  Movie.m
//  Movies
//
//  Created by Sam Meech-Ward on 2017-08-10.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "Movie.h"

@implementation Movie

- (instancetype)initWithTitle:(NSString *)title posterImage:(UIImage *)posterImage
{
    self = [super init];
    if (self) {
        _title = title;
        _posterImage = posterImage;
    }
    return self;
}

@end

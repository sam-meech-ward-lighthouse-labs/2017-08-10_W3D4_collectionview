//
//  MovieCollectionViewCell.m
//  Movies
//
//  Created by Sam Meech-Ward on 2017-08-10.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "MovieCollectionViewCell.h"

@interface MovieCollectionViewCell()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation MovieCollectionViewCell

- (void)setMovie:(Movie *)movie {
    _movie = movie;
    [self updateCell];
}

- (void)updateCell {
    self.titleLabel.text = self.movie.title;
    self.imageView.image = self.movie.posterImage;
}

@end

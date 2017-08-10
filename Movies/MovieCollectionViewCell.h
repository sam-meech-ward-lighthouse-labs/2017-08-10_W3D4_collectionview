//
//  MovieCollectionViewCell.h
//  Movies
//
//  Created by Sam Meech-Ward on 2017-08-10.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

@interface MovieCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) Movie *movie;

- (void)updateCell;

@end

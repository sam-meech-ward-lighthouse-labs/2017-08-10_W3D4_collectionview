//
//  MovieFlowLayout.m
//  Movies
//
//  Created by Sam Meech-Ward on 2017-08-10.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "MovieFlowLayout.h"

@implementation MovieFlowLayout

- (void)prepareLayout {
    self.itemSize = CGSizeMake(200.0, 300.0);
    self.minimumInteritemSpacing = CGFLOAT_MAX;
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.minimumLineSpacing = 100.0;
    self.sectionInset = UIEdgeInsetsMake(50.0, 50.0, 50.0, 50.0);
}

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSArray<UICollectionViewLayoutAttributes *> *superAttrs = [super layoutAttributesForElementsInRect:rect];
    
    // Need to copy attrs from super to avoid cached frame mismatch
    NSMutableArray<UICollectionViewLayoutAttributes *> *newAttrs = [[NSMutableArray alloc] init];
    
    for (UICollectionViewLayoutAttributes *superAttribute in superAttrs) {
        
        UICollectionViewLayoutAttributes *attribute = superAttribute.copy;
        [newAttrs addObject:attribute];
        
        // I can modify the attribute object, and it will update the way a cell is viewed on screen
        
        attribute.transform = CGAffineTransformMakeRotation(attribute.center.x);
    }
    
    return newAttrs;
}

@end

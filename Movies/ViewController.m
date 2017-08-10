//
//  ViewController.m
//  Movies
//
//  Created by Sam Meech-Ward on 2017-08-10.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "ViewController.h"
#import "Movie.h"
#import "MovieCollectionViewCell.h"
#import "MovieDetailViewController.h"
#import "MovieFlowLayout.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (nonatomic, strong) NSArray<Movie *> *movies;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.movies = @[
                        [[Movie alloc] initWithTitle:@"Interstellar" posterImage:[UIImage imageNamed:@"interstellar"]],
                        [[Movie alloc] initWithTitle:@"Spiderman (The good one)" posterImage:[UIImage imageNamed:@"spiderman"]],
                        [[Movie alloc] initWithTitle:@"Atomic Blonde" posterImage:[UIImage imageNamed:@"atomic"]],
                        [[Movie alloc] initWithTitle:@"Interstellar" posterImage:[UIImage imageNamed:@"interstellar"]],
                        [[Movie alloc] initWithTitle:@"Spiderman (The good one)" posterImage:[UIImage imageNamed:@"spiderman"]],
                        [[Movie alloc] initWithTitle:@"Atomic Blonde" posterImage:[UIImage imageNamed:@"atomic"]],
                        [[Movie alloc] initWithTitle:@"Interstellar" posterImage:[UIImage imageNamed:@"interstellar"]],
                        [[Movie alloc] initWithTitle:@"Spiderman (The good one)" posterImage:[UIImage imageNamed:@"spiderman"]],
                        [[Movie alloc] initWithTitle:@"Atomic Blonde" posterImage:[UIImage imageNamed:@"atomic"]],
                        [[Movie alloc] initWithTitle:@"Interstellar" posterImage:[UIImage imageNamed:@"interstellar"]],
                        [[Movie alloc] initWithTitle:@"Spiderman (The good one)" posterImage:[UIImage imageNamed:@"spiderman"]],
                        [[Movie alloc] initWithTitle:@"Atomic Blonde" posterImage:[UIImage imageNamed:@"atomic"]],
                        [[Movie alloc] initWithTitle:@"Interstellar" posterImage:[UIImage imageNamed:@"interstellar"]],
                        [[Movie alloc] initWithTitle:@"Spiderman (The good one)" posterImage:[UIImage imageNamed:@"spiderman"]],
                        [[Movie alloc] initWithTitle:@"Atomic Blonde" posterImage:[UIImage imageNamed:@"atomic"]]
                        ];
    
    MovieFlowLayout *movieFlowlayout = [[MovieFlowLayout alloc] init];
    self.collectionView.collectionViewLayout = movieFlowlayout;
    
//    UICollectionViewFlowLayout *flowLayout = self.collectionView.collectionViewLayout;
    
//    flowLayout.itemSize = CGSizeMake(200.0, 300.0);
//    flowLayout.minimumInteritemSpacing = 100.0;
//    flowLayout.minimumLineSpacing = 50.0;
//    flowLayout.sectionInset = UIEdgeInsetsMake(0, 50.0, 0, 50.0);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.movies.count;
}


- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    MovieCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"movie-cell" forIndexPath:indexPath];
    Movie *movie = self.movies[indexPath.row];
    
    cell.movie = movie;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    MovieDetailViewController *viewController = segue.destinationViewController;
    
    NSArray *selectedIndexPaths = [self.collectionView indexPathsForSelectedItems];
    // I know there's only one selected cell, so i'm just going to get that single cell (index path)
    NSIndexPath *indexPath = selectedIndexPaths[0];
    
    Movie *movie = self.movies[indexPath.item];
    
    viewController.movie = movie;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"selected: %i", indexPath.row);
}


@end

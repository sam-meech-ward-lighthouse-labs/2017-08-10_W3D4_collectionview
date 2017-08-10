# Collection View

* Our model object today is `Movie`

## Data source

* the protocol we use to populate the collection view.

## Protoype Cells & Deque reusable cells

* Dequeue cells to add them to the collection view.

## Custom Cell

* Create a new class to connect outlets to custom cells.

## Detail View Controller

* When we create a new view controller to present details about the currently selected cell.
* Use prepare for segue to pass data to the destination view controller.

## Collection View and Table View Controllers

* CollectionViewController: collection view takes up the entire screen. And you get boilerplate code.

----

# Layout

## UICollectionViewLayout

## UICollectionViewFlowLayout

* Modify the collection view flow layout to change the way the cells are displayed.

```
- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSArray<UICollectionViewLayoutAttributes *> *superAttrs = [super layoutAttributesForElementsInRect:rect];

    // Need to copy attrs from super to avoid cached frame mismatch
    NSMutableArray<UICollectionViewLayoutAttributes *> *newAttrs = [[NSMutableArray alloc] init];

    return newAttrs;
}
```


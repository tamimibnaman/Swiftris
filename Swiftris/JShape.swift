//
//  JShape.swift
//  Swiftris
//
//  Created by Tamim Ibn Aman on 6/25/17.
//  Copyright © 2017 Tamim Ibn Aman. All rights reserved.
//

class JShape:Shape {
    /*
     
     Orientation 0
     
     • | 0 |
     | 1 |
     | 3 | 2 |
     
     Orientation 90
     
     | 3•|
     | 2 | 1 | 0 |
     
     Orientation 180
     
     | 2•| 3 |
     | 1 |
     | 0 |
     
     Orientation 270
     
     | 0•| 1 | 2 |
     | 3 |
     
     • marks the row/column indicator for the shape
     
     Pivots about `1`
     
     */
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero:       [(1, 0), (1, 1),  (1, 2),  (0, 2)],
            Orientation.Ninety:     [(2, 1), (1, 1),  (0, 1),  (0, 0)],
            Orientation.OneEighty:  [(0, 2), (0, 1),  (0, 0),  (1, 0)],
            Orientation.TwoSeventy: [(0, 0), (1, 0),  (2, 0),  (2, 1)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero:       [blocks[thirdBlockIdx], blocks[fourthBlockIdx]],
            Orientation.Ninety:     [blocks[firstBlockIdx], blocks[secondBlockIdx], blocks[thirdBlockIdx]],
            Orientation.OneEighty:  [blocks[firstBlockIdx], blocks[fourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[firstBlockIdx], blocks[secondBlockIdx], blocks[fourthBlockIdx]]
        ]
    }
}

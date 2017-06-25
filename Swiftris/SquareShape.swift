//
//  SquareShape.swift
//  Swiftris
//
//  Created by Tamim Ibn Aman on 6/25/17.
//  Copyright © 2017 Tamim Ibn Aman. All rights reserved.
//

class SquareShape: Shape{
    /*
    |0|1|
    |2|3|
    */
    
    override var blockRowColumnPositions: [Orientation : Array<(columnDiff: Int, rowDiff: Int)>]{
        return [
            Orientation.Zero: [(0, 0), (1, 0), (0, 1), (1, 1)],
            Orientation.OneEighty: [(0, 0), (1, 0), (0, 1), (1, 1)],
            Orientation.Ninety: [(0, 0), (1, 0), (0, 1), (1, 1)],
            Orientation.TwoSeventy: [(0, 0), (1, 0), (0, 1), (1, 1)],
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation : Array<Block>]{
        return [
            Orientation.Zero:       [blocks[thirdBlockIdx], blocks[fourthBlockIdx]],
            Orientation.OneEighty:       [blocks[thirdBlockIdx], blocks[fourthBlockIdx]],
            Orientation.Ninety:       [blocks[thirdBlockIdx], blocks[fourthBlockIdx]],
            Orientation.TwoSeventy:       [blocks[thirdBlockIdx], blocks[fourthBlockIdx]],
        ]
    }
}

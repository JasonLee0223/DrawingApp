//
//  Rectangle.swift
//  DrawingApp
//
//  Created by Jason on 2022/08/30.
//

import Foundation

class Rectangle: ShowRect {
    private(set) var id: UniqueIdentifier
    private(set) var point: Point
    private(set) var size: RectSize
    private(set) var backgroundColor: BackgroundColor
    private(set) var alpha: Alpha
    
    init(id: UniqueIdentifier, point: Point, size: RectSize, backgroundColor: BackgroundColor, alpha: Alpha) {
        self.id = id
        self.point = point
        self.size = RectSize(width: 150, height: 120)
        self.backgroundColor = backgroundColor
        self.alpha = alpha
    }
    
    func isPointRectangleExist(_ point: Point) -> Bool {
        let minX = point.x
        let minY = point.y
        let maxX = point.x + self.size.width
        let maxY = point.y + self.size.height
        if((point.x <= maxX && point.x >= minX) && (point.y <= maxY && point.y >= minY)) {
            return true
        } else {
            return false
        }
    }
}

extension ShowRect {
    var description: String {
        return "\(self.id), \(self.point), \(self.size), \(self.backgroundColor), \(self.alpha)"
    }
}

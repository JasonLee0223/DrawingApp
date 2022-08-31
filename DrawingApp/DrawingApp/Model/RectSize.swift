//
//  Size.swift
//  DrawingApp
//
//  Created by Jason on 2022/08/29.
//

import Foundation

class RectSize {
    
    private(set) var width: Double
    private(set) var height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    static func randomSize() -> RectSize {
        let randomWidth = floor(Double.random(in: 50.0...200.0))
        let randomHeight = floor(Double.random(in: 50.0...200.0))
        return RectSize(width: randomWidth, height: randomHeight)
    }
}

extension RectSize:CustomStringConvertible {
    var description: String {
        return "W\(self.width), H\(self.height)"
    }
}

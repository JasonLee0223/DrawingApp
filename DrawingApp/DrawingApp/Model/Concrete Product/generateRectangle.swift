//
//  RectFactory.swift
//  DrawingApp
//
//  Created by Jason on 2022/08/31.
//

import Foundation

// Concrete Product
class generateRectangle: ProductAboutRectangle {
    
    func generateRandomIdentifier() -> UniqueIdentifier {
        return UniqueIdentifier()
    }
    
    func generateRandomSize() -> RectSize {
        return RectSize.randomSize()
    }
    
    func generateRandomPoint() -> Point {
        return Point.randomPoint()
    }
    
    func generateRandomColor() -> BackgroundColor {
        return BackgroundColor.randomBackgroundColor()
    }
    
    func generateRandomAlpha() -> Alpha {
        return Alpha.random
    }
    
    func createRandomRectangle() -> Rectangle {
         return Rectangle(id: generateRandomIdentifier(),
                          point: generateRandomPoint(),
                          size: generateRandomSize(),
                          backgroundColor: generateRandomColor(),
                          alpha: generateRandomAlpha())
    }
}

//
//  RectagleFactory.swift
//  DrawingApp
//
//  Created by Jason on 2022/10/05.
//

import Foundation

// Concrete Creator
class RectangleFactory: RectangleViewProtocol {
    func createRandomRectangleView() -> ProductAboutRectangle {
        return generateRectangle()
    }
    
}

//
//  RectagleFactory.swift
//  DrawingApp
//
//  Created by Jason on 2022/10/05.
//

import Foundation

//MARK: - Factory (Concrete Creator)
// RectangleFactory 객체를 통해 Rectangle객체를 만들면 된다.
// Rectangle을 생성하는 부분은 DrawingView의 Button Action을 통해 만들어진다.
class RectangleFactory: RectangleViewProtocol {
    func createRandomRectangle() -> ProductAboutRectangle {
        return generateRectangle()
    }
    
}

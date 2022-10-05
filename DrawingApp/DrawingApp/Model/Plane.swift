//
//  Plane.swift
//  DrawingApp
//
//  Created by Jason on 2022/09/13.
//

import Foundation
import OSLog

struct Plane {
    
    private(set) var rectangles = [Rectangle]()
    
    func order(factory: RectangleViewProtocol) {
        let newRectangle = factory.createRandomRectangle()
        let testRect = newRectangle.createRandomRect()
        os_log(.debug, log: .default, "\n\(testRect.description)")
    }
    
    // 사각형을 갖게 되는 메서드
    mutating func thePlaneOwns(rectangleView: Rectangle) {
        
    }
    
    // 사각형의 전체 개수를 알려주는 메서드 or 연산 프로퍼티
    func countOfRectangle() -> Int {
        
        return rectangles.count
    }
    
    // Subscript를 이용하여 index를 넘겨 해당 사각형 모델을 return
    func rectangle(index: Int) -> Rectangle {
        
        return rectangles[index]
    }
    
    // 터치 좌표를 넘기면 해당 위치의 사각형이 존재하는지 판단
    func isRectExist(_ point: Point) -> Bool {
        
        return false
    }
}

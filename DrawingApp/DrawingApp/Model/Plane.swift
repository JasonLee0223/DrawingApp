//
//  Plane.swift
//  DrawingApp
//
//  Created by Jason on 2022/09/13.
//

import Foundation

protocol PlaneDelegate:AnyObject {
    func addingRectangleComplted(product: Rectangle)
}

// Plane은 생성한 사각형의 객체를 포함(저장)하여 View에서 변경되는 내용을 업데이트하고 반영한다.
struct Plane {
    
    private var rectangles = [Rectangle]()
    
    private var count: Int = 0
    private(set) var rectangleCount: Int {
        get {
            return count
        }
        set(count) {
            self.count = count
        }
    }
    
    weak var delegate: PlaneDelegate?
    
    // 사각형을 갖게 되는 메서드
    mutating func add(theCreated rectangle: Rectangle) {
        rectangles.append(rectangle)
        count += 1
        if let delegate = self.delegate {
            delegate.addingRectangleComplted(product: rectangle)
        }
    }
    
    // Subscript를 이용하여 index를 넘겨 해당 사각형 모델을 return
    subscript(_ index: Int) -> Rectangle {
        return rectangles[index]
    }
    
    // 터치 좌표를 넘기면 해당 위치의 사각형이 존재하는지 판단
    func isRectExist(_ point: Point) -> Bool {
        
        return false
    }
}

//
//  Plane.swift
//  DrawingApp
//
//  Created by Jason on 2022/09/13.
//

import Foundation

// Plane은 생성한 사각형의 객체를 포함(저장)하여 View에서 변경되는 내용을 업데이트하고 반영한다.
struct Plane {
    
    weak var delegate: PlaneDelegate?
    private var specifiedRectangle: Rectangle?
    private var rectangles = [Rectangle]()
    private(set) var selectedRectangleID = [String]()
    private var count: Int = 0
    
    private(set) var rectangleCount: Int {
        get {
            return count
        }
        set(count) {
            self.count = count
        }
    }
    
    // Subscript를 이용하여 index를 넘겨 해당 사각형 모델을 return
    subscript(_ index: Int) -> Rectangle? {
        return rectangles[index]
    }
    
    // 사각형을 갖게 되는 메서드
    mutating func add(theCreated rectangle: Rectangle) {
        rectangles.append(rectangle)
        count += 1
        if let delegate = self.delegate {
            delegate.addingRectangleComplted(product: rectangle)
        }
    }
    
    // DrawingView의 location point를 확인하는 메서드
//    mutating func findMatchingRectanglePoint(x:Double, y:Double) {
//        if let delegate = self.delegate {
//            guard let rectangle = self[x,y] else {
//                //rectangle 못찾았다
//                return delegate.rectangleNotFoundFromPlane()
//            }
//            // rectangle을 제대로 찾았다
//            delegate.rectangleFoundFromPlane(product: rectangle)
//        }
//    }
    
    mutating func isThereRectangle(point: Point) {
        for rectangle in rectangles.reversed() {
            if rectangle.isPointRectangleExist(point) {
                self.specifiedRectangle = rectangle
                if delegate?.findRequestFromPlane(product: rectangle) == true {
                    return
                } else {
                    self.specifiedRectangle = nil
                }
            }
        }
    }
    
    // 터치 좌표를 넘기면 해당 위치의 사각형이 존재하는지 판단
    func isRectExist(_ point: Point) -> Bool {
        
        return false
    }
}

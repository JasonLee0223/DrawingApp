//
//  Plane.swift
//  DrawingApp
//
//  Created by Jason on 2022/09/13.
//

import Foundation

// Plane의 역할
// 1. DrawingView에 넘겨줘야 할 사각형을 갖고 있어야한다.
// 2. 사각형 전체 개수를 알려주는 메서드 또는 연산프로퍼티가 있어야한다.
// 3. Subscript로 index를 넘기면 해당 사각형 모델을 return한다. -> 사각형의 투명도나 탭제스처를 처리하기위함?
// 4. 터치 좌표를 넘기면 해당 위치를 포함하는 사각형이 있는지 판단한다. (3번 역할을 수행해야 가능하겠지?)

struct Plane {
    
    private var rectangles = [Rectangle]()
    
    
    // 사각형을 갖게 되는 메서드
    mutating func own(rectangleView: Rectangle) {
        
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

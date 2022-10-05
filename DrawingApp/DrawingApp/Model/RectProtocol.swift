//
//  RectProtocol.swift
//  DrawingApp
//
//  Created by Jason on 2022/08/30.
//

import Foundation

// Product part
protocol CreateRandomRect {
    func generateRandomIdentifier() -> UniqueIdentifier
    func generateRandomSize() -> RectSize
    func generateRandomPoint() -> Point
    func generateRandomColor() -> BackgroundColor
    func generateRandomAlpha() -> Alpha
    func createRandomRect() -> showRect
    func createRectangle(id:UniqueIdentifier, point:Point, size: RectSize, color: BackgroundColor, alpha: Alpha) -> Rectangle
}

// OS_Log part
protocol showRect: CustomStringConvertible {
    var id: UniqueIdentifier { get }
    var point: Point { get }
    var size: RectSize { get }
    var backgroundColor: BackgroundColor { get }
    var alpha: Alpha { get }
}

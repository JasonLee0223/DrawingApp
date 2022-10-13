//
//  RectProtocol.swift
//  DrawingApp
//
//  Created by Jason on 2022/08/30.
//

import Foundation

// Product part
protocol ProductAboutRectangle {
    func generateRandomIdentifier() -> UniqueIdentifier
    func generateRandomSize() -> RectSize
    func generateRandomPoint() -> Point
    func generateRandomColor() -> BackgroundColor
    func generateRandomAlpha() -> Alpha
    func generateRandomRectangle() -> Rectangle
}

// OS_Log part
protocol ShowRect: CustomStringConvertible {
    var id: UniqueIdentifier { get }
    var point: Point { get }
    var size: RectSize { get }
    var backgroundColor: BackgroundColor { get }
    var alpha: Alpha { get }
}

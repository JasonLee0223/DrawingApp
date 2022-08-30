//
//  RectProtocol.swift
//  DrawingApp
//
//  Created by Jason on 2022/08/30.
//

import Foundation

protocol CreateRandomRect {
    func generateRandomIdentifier() -> UniqueIdentifier
    func generateRandomSize() -> RectSize
    func generateRandomPoint() -> Point
    func generateRandomColor() -> BackgroundColor
    func generateRandomAlpha() -> Alpha
    func createRandomRect() -> showRect
}

protocol showRect: CustomStringConvertible {
    var id: UniqueIdentifier { get }
    var point: Point { get }
    var size: RectSize { get }
    var backgroundColor: BackgroundColor { get }
    var alpha: Alpha { get }
}

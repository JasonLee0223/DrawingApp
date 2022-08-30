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

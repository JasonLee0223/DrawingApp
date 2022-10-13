//
//  ViewFactory.swift
//  DrawingApp
//
//  Created by Jason on 2022/09/28.
//

import Foundation
import UIKit

// ViewFactory의 역할은 똑같이 생성되는 뷰를 관리하는 역할?
class ViewFactory {
    
    static func generateRectangleView(of rectangle: Rectangle) -> UIView {
        let point = rectangle.point
        let size = rectangle.size
        let backgroundColor = rectangle.backgroundColor
        let convertedColorValue = ViewFactory.convertColorValueToUIColor(r: Double(backgroundColor.red), g: Double(backgroundColor.green), b: Double(backgroundColor.blue))
        let alpha = CGFloat(rectangle.alpha.rawValue)
        
        let newRectView = UIView(frame: CGRect(x: point.x,
                                               y: point.y,
                                               width: size.width,
                                               height: size.height))
        newRectView.alpha = alpha
        newRectView.backgroundColor = convertedColorValue
        return newRectView
    }
}

extension ViewFactory {
    private static func convertColorValueToUIColor(r: Double, g: Double, b: Double) -> UIColor {
        let convertedRed = r/Double(255)
        let convertedGreen = g/Double(255)
        let convertedBlue = b/Double(255)
        
        return UIColor(red: convertedRed, green: convertedGreen, blue: convertedBlue, alpha: 1.0)
    }
}

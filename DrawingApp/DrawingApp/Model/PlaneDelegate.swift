//
//  PlaneDelegate.swift
//  DrawingApp
//
//  Created by 이건행 on 2022/10/14.
//

import Foundation

protocol PlaneDelegate:AnyObject {
    func addingRectangleComplted(product: Rectangle)
    func findRequestFromPlane(product: Rectangle?) -> Bool
//    func rectangleNotFoundFromPlane()
}

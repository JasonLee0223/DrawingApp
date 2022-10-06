//
//  BackgroundColor.swift
//  DrawingApp
//
//  Created by Jason on 2022/08/29.
//

import Foundation

class BackgroundColor {
    
    private(set) var red: Int = 0
    private(set) var green: Int = 0
    private(set) var blue: Int = 0
    
//    var hexColor: String {
//        "#\(String(r, radix: 16))\(String(g, radix: 16))\(String(b, radix: 16))"
//    }
    
    init(red:Int, green:Int, blue:Int) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    static func randomBackgroundColor() -> BackgroundColor {
        let randomR = Int.random(in: 0...255)
        let randomG = Int.random(in: 0...255)
        let randomB = Int.random(in: 0...255)
        return BackgroundColor(red: randomR, green: randomG, blue: randomB)
    }
}

extension BackgroundColor: CustomStringConvertible {
    var description: String {
        return "R:\(self.red), G:\(self.green), B:\(self.blue)"
    }
}

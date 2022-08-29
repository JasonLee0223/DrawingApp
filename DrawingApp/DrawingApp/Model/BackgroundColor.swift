//
//  BackgroundColor.swift
//  DrawingApp
//
//  Created by Jason on 2022/08/29.
//

import Foundation

class BackgroundColor {
    
    private var red: Int = 0
    private var green: Int = 0
    private var blue: Int = 0
    
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
        return "BackgroundColor: R = \(self.red), G = \(self.green), B = \(self.blue)"
    }
}

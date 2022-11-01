//
//  RectangleView.swift
//  DrawingApp
//
//  Created by Jason on 2022/11/02.
//

import UIKit

class RectangleView: UIView {
    
    override var description: String {
        return "Frame = \(frame), Alpha = \(alpha), BackgroundColor = \(backgroundColor ?? .white)"
    }
    
    required override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    init(frame: CGRect, backgroundColor: UIColor, alpha: CGFloat) {
        super.init(frame: frame)
        self.backgroundColor = backgroundColor
        self.alpha = alpha
    }
}

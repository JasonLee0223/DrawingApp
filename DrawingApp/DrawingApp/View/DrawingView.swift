//
//  DrawingView.swift
//  DrawingApp
//
//  Created by Jason on 2022/09/15.
//

import UIKit

class DrawingView:UIView {
    
    override init(frame: CGRect) {
        super.init(frame: CGRect(x: 0, y: 0, width: 1166, height: 1024))
        layout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    let createRectButton: UIButton = {
        var config = UIButton.Configuration.gray()
        config.buttonSize = .large
        config.contentInsets = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
        
        var titleAttr = AttributedString.init(" ▢ ")
        titleAttr.font = .systemFont(ofSize: 35.0, weight: .heavy)
        config.attributedTitle = titleAttr
        
        var subtitleAttr = AttributedString.init(" 사각형 ")
        subtitleAttr.font = .systemFont(ofSize: 15.0, weight: .regular)
        config.attributedSubtitle = subtitleAttr
        
        let rectButton = UIButton(configuration: config)
        rectButton.frame = CGRect(x: 583, y: 930, width: 150, height: 93)
        return rectButton
    }()
    
}

extension DrawingView {
    func layout() {
        self.addSubview(createRectButton)
    }
}

//
//  DrawingView.swift
//  DrawingApp
//
//  Created by Jason on 2022/09/15.
//

import UIKit

class DrawingView: UIView {
    
    weak var delegate: DrawingViewDelegate?
    
    init(frame: CGRect, backgroundColor: UIColor) {
        super.init(frame: frame)
        self.backgroundColor = backgroundColor
        layout()
        setGeneratingButtonAction()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
        
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
    
    //MARK: - Button Action
    private func setGeneratingButtonAction() {
        let buttonAction: UIAction = UIAction(title: ""){ _ in
            self.sendCreatingRectangleRequest()
        }
        self.createRectButton.addAction(buttonAction, for: .touchDown)
    }
    
    private func sendCreatingRectangleRequest() {
        if let delegate = self.delegate {
            delegate.creatingRectangleRequested()
        }
    }
    
}

extension DrawingView {
    func layout() {
        self.addSubview(createRectButton)
    }
}

//
//  DrawingView.swift
//  DrawingApp
//
//  Created by Jason on 2022/09/13.
//

import UIKit

protocol ControlViewDelegate: AnyObject {
    
}

class ControlView: UIView {
    
    init(frame: CGRect, backgroundColor: UIColor) {
        super.init(frame: frame)
        self.backgroundColor = backgroundColor
        layout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    let colorLabel: UILabel = {
        let backgroundColor = UILabel()
        backgroundColor.text = "배경색"
        backgroundColor.font = .systemFont(ofSize: 18)
        backgroundColor.translatesAutoresizingMaskIntoConstraints = false
        return backgroundColor
    }()
    
    let colorDescription: UIButton = {
        let config = UIButton.Configuration.plain()
        let descriptionArea = UIButton(configuration: config)
        descriptionArea.layer.cornerRadius = 10
        descriptionArea.layer.borderWidth = 1
        descriptionArea.layer.borderColor = UIColor.lightGray.cgColor
        descriptionArea.setTitle(" #D6DFE9 ", for: .normal)
        descriptionArea.setTitleColor(UIColor.black, for: .normal)
        descriptionArea.translatesAutoresizingMaskIntoConstraints = false
        return descriptionArea
    }()
    
    let alphaLabel: UILabel = {
        let alphaLabel = UILabel()
        alphaLabel.text = "투명도"
        alphaLabel.font = .systemFont(ofSize: 18)
        alphaLabel.translatesAutoresizingMaskIntoConstraints = false
        return alphaLabel
    }()
    
    let slider: UISlider = {
        // Create a Slider
        let slider = UISlider()
//        slider.backgroundColor = UIColor.yellow
        
        // Set the values
        slider.minimumValue = 1
        slider.maximumValue = 10
        
        // Set the position of Slider
        slider.value = 1
        slider.thumbTintColor = UIColor.black
        slider.maximumTrackTintColor = UIColor.lightGray
        slider.minimumTrackTintColor = UIColor.systemGray3
        // addTarget을 설정해줘야한다.
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
}

extension ControlView {
    func layout() {
        self.addSubview(colorLabel)
        colorLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 45).isActive = true
        colorLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        
        self.addSubview(colorDescription)
        colorDescription.topAnchor.constraint(equalTo: colorLabel.bottomAnchor, constant: 10).isActive = true
        colorDescription.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 45).isActive = true
        
        self.addSubview(alphaLabel)
        alphaLabel.topAnchor.constraint(equalTo: colorDescription.bottomAnchor, constant: 30).isActive = true
        alphaLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        
        self.addSubview(slider)
        slider.topAnchor.constraint(equalTo: alphaLabel.bottomAnchor, constant: 10).isActive = true
        slider.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        slider.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30).isActive = true
    }
}

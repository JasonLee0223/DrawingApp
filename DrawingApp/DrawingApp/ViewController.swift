//
//  ViewController.swift
//  DrawingApp
//
//  Created by Jason on 2022/08/29.
//

import UIKit
import OSLog

class ViewController: UIViewController {
    
    let drawingView = DrawingView()
    let controlView = ControlView()
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    let testFactory = Plane()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(drawingView)
        self.view.addSubview(controlView)
        
        let rectangle = testFactory.order(factory: RectangleFactory())
    }
}

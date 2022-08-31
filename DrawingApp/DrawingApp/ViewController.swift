//
//  ViewController.swift
//  DrawingApp
//
//  Created by Jason on 2022/08/29.
//

import UIKit
import OSLog

class ViewController: UIViewController {
    
    let testId = UniqueIdentifier()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomRectFactory = RectFactory()
        
        (0..<4).forEach{ _ in
            let rectangle = randomRectFactory.createRandomRect()
            os_log(.debug, log: .default, "\n\(rectangle.description)")
        }
    }
    
}


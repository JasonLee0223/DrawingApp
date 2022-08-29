//
//  ViewController.swift
//  DrawingApp
//
//  Created by Jason on 2022/08/29.
//

import UIKit

class ViewController: UIViewController {
    
    let testId = UniqueIdentifier()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        testId.createOneUUID()
    }
    
}


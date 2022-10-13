//
//  ViewController.swift
//  DrawingApp
//
//  Created by Jason on 2022/08/29.
//

import UIKit
import OSLog

class ViewController: UIViewController {
    
    var drawingView: DrawingView?
    var controlView: ControlView?
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    private var plane: Plane = Plane()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeAllSubViews()
        
//        let rectangle = testFactory.addTo(rectFactory: RectangleFactory())
//        let cnt = testFactory.countOfRectangle()
//        print("\(cnt)")
    }
    
    //MARK: - [Confirm] Configure about UIView (SubViews)
    private func initializeAllSubViews() {
        setDrawingView()
        setControlView()
    }
    
    private func setDrawingView() {
        let frame = CGRect(x: self.view.frame.minX,
                           y: self.view.frame.minY,
                           width: self.view.frame.width*0.8,
                           height: self.view.frame.height)
        let drawingView = DrawingView(frame: frame)
        drawingView.delegate = self
        self.view.addSubview(drawingView)
    }
    
    private func setControlView() {
        guard let drawingView = self.controlView else { return }
        let frame = CGRect(x: drawingView.frame.width,
                           y: self.view.frame.minY,
                           width: self.view.frame.width - drawingView.frame.width,
                           height: self.view.frame.height)
        let controlView = ControlView(frame: frame)
//        controlView.delegate = self
        self.controlView = controlView
        self.view.addSubview(controlView)
    }
    
    //MARK: - [Excepted] Configure about TapGesture
}

//MARK: - DrawingViewDelegate
extension ViewController: DrawingViewDelegate {
    
    func creatingRectangleRequested() {
        guard let drawingView = self.drawingView else { return }
        let rectangle = RectangleFactory.createRandomRectangle().generateRandomRectangle()
        plane.addTo(rectFactory: rectangle)
    }
    
}

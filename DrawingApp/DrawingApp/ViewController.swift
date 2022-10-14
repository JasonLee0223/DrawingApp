//
//  ViewController.swift
//  DrawingApp
//
//  Created by Jason on 2022/08/29.
//

import UIKit
import OSLog

class ViewController: UIViewController {
    
    private var drawingView: DrawingView?
    private var controlView: ControlView?
    
    private var plane: Plane = Plane()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializePlaneDelegate()
        initializeAllSubViews()
        setGestureRecognizer()
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
        let drawingView = DrawingView(frame: frame, backgroundColor: .lightGray)
        drawingView.delegate = self
        self.drawingView = drawingView
        self.view.addSubview(drawingView)
    }
    
    private func setControlView() {
        guard let drawingView = self.drawingView else { return }
        let frame = CGRect(x: drawingView.frame.width,
                           y: self.view.frame.minY,
                           width: self.view.frame.width - drawingView.frame.width,
                           height: self.view.frame.height)
        let controlView = ControlView(frame: frame, backgroundColor: UIColor.systemGray6)
//        controlView.delegate = self
        self.controlView = controlView
        self.view.addSubview(controlView)
    }
    
    private func setGestureRecognizer() {
        guard drawingView != nil else { return }
        let tapGestureRecognizer = UITapGestureRecognizer()
        tapGestureRecognizer.delegate = self
        drawingView?.addGestureRecognizer(tapGestureRecognizer)
    }
    
    //MARK: - [Confirm] Configure about PlaneDelegate
    private func initializePlaneDelegate() {
        self.plane.delegate = self
    }
    
    //MARK: - [Excepted] Configure about TapGesture

}

//MARK: - DrawingViewDelegate
extension ViewController: DrawingViewDelegate {
    
    func creatingRectangleRequested() {
        guard self.drawingView != nil else { return }
        let rectangleFactory = RectangleFactory().createRandomRectangle()
        let rectangle = rectangleFactory.generateRandomRectangle()
        let string = rectangle.id.uniqueID
        plane.add(theCreated: rectangle)
    }
}

//MARK: - ControlViewDelegate
extension ViewController: ControlViewDelegate {
    
}

//MARK: - PlaneDelegate
extension ViewController: PlaneDelegate {
    func addingRectangleComplted(product: Rectangle) {
        guard self.drawingView != nil else { return }
        os_log("\(product)")
        let newRectangleView = ViewFactory.generateRectangleView(of: product)
        self.view.addSubview(newRectangleView)
    }
    
    func rectangleFoundFromPlane(product: Rectangle) {
        <#code#>
    }
    
    func rectangleNotFoundFromPlane() {
        <#code#>
    }
}

//MARK: - GestureRecognizerDelegate
extension ViewController: UIGestureRecognizerDelegate {
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        let touchPoint = touch.location(in: self.drawingView)
        self.plane.findMatchingRectanglePoint(x: touchPoint.x, y: touchPoint.y)
        return true
    }
}

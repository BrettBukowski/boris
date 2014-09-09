//
//  ViewController.swift
//  BorisD
//
//  Created by Brett Bukowski on 9/8/14.
//  Copyright (c) 2014 Brett Bukowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var delaunay: Delaunay

    let numberOfPoints = 30
    let width = UIScreen.mainScreen().bounds.size.width
    let height = UIScreen.mainScreen().bounds.size.height

//    @IBOutlet var delaunayView: DelaunayView!

    var delaunayView: DelaunayView

    required init(coder aDecoder: NSCoder) {
        delaunayView = DelaunayView()
        var points = [
            CGPoint(x: 0, y: 0),
            CGPoint(x: width, y: 0),
            CGPoint(x: 0, y: height),
            CGPoint(x: width, y: height),
        ]

        for i in 0..<numberOfPoints {
            var point = CGPoint(x: Int(arc4random()) % Int(width), y: Int(arc4random()) % Int(height))
            points.append(point)
        }

        delaunay = Delaunay(points: points)

        super.init(coder: aDecoder)
//        self.view = DelaunayView()
//        fatalError("init(coder:) has not been implemented")
    }

//    override func loadView() {
//        view.addSubview(delaunayView)
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        var length = 0
        var pointList = delaunay.render(&length)

        (view as DelaunayView).length = length
        (view as DelaunayView).pointList = pointList
        view.setNeedsDisplay()
    }

    func drawRect(rect: CGRect) {
        var context = UIGraphicsGetCurrentContext()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


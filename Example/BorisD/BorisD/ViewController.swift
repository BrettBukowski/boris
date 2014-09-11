//
//  ViewController.swift
//  BorisD
//
//  Created by Brett Bukowski on 9/8/14.
//  Copyright (c) 2014 Brett Bukowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var delaunay: Delaunay?

    let numberOfPoints = 30
    let width = UIScreen.mainScreen().bounds.size.width
    let height = UIScreen.mainScreen().bounds.size.height

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func loadView() {
        view = DelaunayView(frame: UIScreen.mainScreen().applicationFrame)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

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

        var pointList = delaunay!.computePoints()

        (view as DelaunayView).pointList = pointList

        view.setNeedsDisplay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


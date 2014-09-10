//
//  View.swift
//  BorisD
//
//  Created by Brett Bukowski on 9/8/14.
//  Copyright (c) 2014 Brett Bukowski. All rights reserved.
//

import UIKit
import CoreGraphics

public class DelaunayView : UIView {
    var pointList = Array<CGPoint>()

    let num = 50
    let r = 50

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.redColor()
    }

    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override public func drawRect(rect: CGRect) {
        var context = UIGraphicsGetCurrentContext()

        for var i = 0; i < pointList.count; i += 3 {
            CGContextBeginPath(context)

            CGContextSetRGBFillColor(context, randomColor(), randomColor(), randomColor(), 1.0)

            CGContextMoveToPoint(context, pointList[i].x, pointList[i].y)

            CGContextAddLineToPoint(context, pointList[i].x, pointList[i].y)
            CGContextAddLineToPoint(context, pointList[i + 1].x, pointList[i + 1].y)
            CGContextAddLineToPoint(context, pointList[i + 2].x, pointList[i + 2].y)
            CGContextAddLineToPoint(context, pointList[i].x, pointList[i].y)

            CGContextFillPath(context)
        }
    }

    private func randomColor() -> CGFloat {
        return CGFloat(((Int(arc4random()) % r) + num) / 100.0)
    }
}

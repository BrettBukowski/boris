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

    private var drawn = false

    private var colorGradient: ColorGradient?

    override init(frame: CGRect) {
        super.init(frame: frame)

        colorGradient = ColorGradient(palette: "random")

        self.backgroundColor = UIColor.whiteColor()
    }

    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override public func drawRect(rect: CGRect) {
        if (drawn) {
            return
        }

        let context = UIGraphicsGetCurrentContext()

        for var i = 0; i < pointList.count; i += 3 {
            CGContextBeginPath(context)

            CGContextSetFillColorWithColor(context, colorGradient!.getRandomColor().CGColor)

            CGContextMoveToPoint(context, pointList[i].x, pointList[i].y)

            CGContextAddLineToPoint(context, pointList[i].x, pointList[i].y)
            CGContextAddLineToPoint(context, pointList[i + 1].x, pointList[i + 1].y)
            CGContextAddLineToPoint(context, pointList[i + 2].x, pointList[i + 2].y)
            CGContextAddLineToPoint(context, pointList[i].x, pointList[i].y)

            CGContextFillPath(context)
        }

        drawn = true
    }
}

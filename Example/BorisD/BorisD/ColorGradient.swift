//
//  ColorGradient.swift
//  BorisD
//
//  Created by Brett Bukowski on 9/10/14.
//  Copyright (c) 2014 Brett Bukowski. All rights reserved.
//

import UIKit

// 4-color colorbrewer palettes. <http://colorbrewer2.org>
let profiles = [
    "YlGn": ["#ffffcc","#c2e699","#78c679","#238443"],
    "YlGnBu": ["#ffffcc","#a1dab4","#41b6c4","#225ea8"],
    "GnBu": ["#f0f9e8","#bae4bc","#7bccc4","#2b8cbe"],
    "BuGn": ["#edf8fb","#b2e2e2","#66c2a4","#238b45"],
    "PuBuGn": ["#f6eff7","#bdc9e1","#67a9cf","#02818a"],
]



class ColorGradient {
    private var profile: Array<String>?

    private var lastGivenColor = -1

    init(palette: String) {
        if palette == "random" {
            let keyIndex = Int(arc4random()) % profiles.count
            var count = 0
            for key in profiles.keys {
                if count++ == keyIndex {
                    profile = profiles[key]
                    break
                }
            }
        }
        else if let match = profiles[palette] {
            profile = match
        }
        else {
            NSException(name: "Error", reason: "No matching profile", userInfo: nil).raise()
        }
    }

    func getRandomColor() -> UIColor {
        var index = -1

        do {
            index = Int(arc4random()) % profile!.count
        } while index == lastGivenColor

        lastGivenColor = index
        NSLog("%d", index)

        let selectedColor = mapRGBScale(convertHexToRGB(profile![index]))
        
        return UIColor(red: selectedColor[0], green: selectedColor[1], blue: selectedColor[2], alpha: 1.0)
    }

    private func convertHexToRGB(var hexString: String) -> Array<UInt32> {
        let scanner = NSScanner(string: hexString.uppercaseString)
        scanner.scanLocation = 1
        var intVal: UInt32 = 0
        scanner.scanHexInt(&intVal)

        let red = (intVal & 0xFF0000) >> 16
        let green = (intVal & 0x00FF00) >> 8
        let blue = intVal & 0x0000FF

        return [red, green, blue]
    }

    private func mapRGBScale(toMap: Array<UInt32>) -> Array<CGFloat> {
        return toMap.map({ CGFloat(Float($0) / 255.0) })
    }
}
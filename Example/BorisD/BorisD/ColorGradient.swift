//
//  ColorGradient.swift
//  BorisD
//
//  Created by Brett Bukowski on 9/10/14.
//  Copyright (c) 2014 Brett Bukowski. All rights reserved.
//

import UIKit

// Colorbrewer palettes. <http://colorbrewer2.org>
let profiles = [
    "YlGn": [
        ["#f7fcb9","#addd8e","#31a354"],
        ["#ffffcc","#c2e699","#78c679","#238443"],
        ["#ffffcc","#c2e699","#78c679","#31a354","#006837"],
    ],
    "YlGnBu": [
        ["#edf8b1","#7fcdbb","#2c7fb8"],
        ["#ffffcc","#a1dab4","#41b6c4","#225ea8"],
        ["#ffffcc","#a1dab4","#41b6c4","#2c7fb8","#253494"],
    ],
    "GnBu": [
        ["#e0f3db","#a8ddb5","#43a2ca"],
        ["#f0f9e8","#bae4bc","#7bccc4","#2b8cbe"],
        ["#f0f9e8","#bae4bc","#7bccc4","#43a2ca","#0868ac"],
    ],
    "BuGn": [
        ["#e5f5f9","#99d8c9","#2ca25f"],
        ["#edf8fb","#b2e2e2","#66c2a4","#238b45"],
        ["#edf8fb","#b2e2e2","#66c2a4","#2ca25f","#006d2c"],
    ],
    "PuBuGn": [
        ["#ece2f0","#a6bddb","#1c9099"],
        ["#f6eff7","#bdc9e1","#67a9cf","#02818a"],
        ["#f6eff7","#bdc9e1","#67a9cf","#1c9099","#016c59"],
    ],
    "PuBu": [
        ["#ece7f2","#a6bddb","#2b8cbe"],
        ["#f1eef6","#bdc9e1","#74a9cf","#0570b0"],
        ["#f1eef6","#bdc9e1","#74a9cf","#2b8cbe","#045a8d"],
    ],
    "BuPu": [
        ["#e0ecf4","#9ebcda","#8856a7"],
        ["#edf8fb","#b3cde3","#8c96c6","#88419d"],
        ["#edf8fb","#b3cde3","#8c96c6","#8856a7","#810f7c"],
    ],
    "RdPu": [
        ["#fde0dd","#fa9fb5","#c51b8a"],
        ["#feebe2","#fbb4b9","#f768a1","#ae017e"],
        ["#feebe2","#fbb4b9","#f768a1","#c51b8a","#7a0177"],
    ],
    "PuRd": [
        ["#e7e1ef","#c994c7","#dd1c77"],
        ["#f1eef6","#d7b5d8","#df65b0","#ce1256"],
        ["#f1eef6","#d7b5d8","#df65b0","#dd1c77","#980043"],
    ],
    "OrRd": [
        ["#fee8c8","#fdbb84","#e34a33"],
        ["#fef0d9","#fdcc8a","#fc8d59","#d7301f"],
        ["#fef0d9","#fdcc8a","#fc8d59","#e34a33","#b30000"],
    ],
    "YlOrRd": [
        ["#ffeda0","#feb24c","#f03b20"],
        ["#ffffb2","#fecc5c","#fd8d3c","#e31a1c"],
        ["#ffffb2","#fecc5c","#fd8d3c","#f03b20","#bd0026"],
    ],
    "YlOrBr": [
        ["#fff7bc","#fec44f","#d95f0e"],
        ["#ffffd4","#fed98e","#fe9929","#cc4c02"],
        ["#ffffd4","#fed98e","#fe9929","#d95f0e","#993404"],
    ],
    "Purples": [
        ["#efedf5","#bcbddc","#756bb1"],
        ["#f2f0f7","#cbc9e2","#9e9ac8","#6a51a3"],
        ["#f2f0f7","#cbc9e2","#9e9ac8","#756bb1","#54278f"],
    ],
    "Blues": [
        ["#deebf7","#9ecae1","#3182bd"],
        ["#eff3ff","#bdd7e7","#6baed6","#2171b5"],
        ["#eff3ff","#bdd7e7","#6baed6","#3182bd","#08519c"],
    ],
    "Greens": [
        ["#e5f5e0","#a1d99b","#31a354"],
        ["#edf8e9","#bae4b3","#74c476","#238b45"],
        ["#edf8e9","#bae4b3","#74c476","#31a354","#006d2c"],
    ],
    "Oranges": [
        ["#fee6ce","#fdae6b","#e6550d"],
        ["#feedde","#fdbe85","#fd8d3c","#d94701"],
        ["#feedde","#fdbe85","#fd8d3c","#e6550d","#a63603"],
    ],
    "Reds": [
        ["#fee0d2","#fc9272","#de2d26"],
        ["#fee5d9","#fcae91","#fb6a4a","#cb181d"],
        ["#fee5d9","#fcae91","#fb6a4a","#de2d26","#a50f15"],
    ],
    "Greys": [
        ["#f0f0f0","#bdbdbd","#636363"],
        ["#f7f7f7","#cccccc","#969696","#525252"],
        ["#f7f7f7","#cccccc","#969696","#636363","#252525"],
    ],
    "PuOr": [
        ["#f1a340","#f7f7f7","#998ec3"],
        ["#e66101","#fdb863","#b2abd2","#5e3c99"],
        ["#e66101","#fdb863","#f7f7f7","#b2abd2","#5e3c99"],
    ],
    "BrBG": [
        ["#d8b365","#f5f5f5","#5ab4ac"],
        ["#a6611a","#dfc27d","#80cdc1","#018571"],
        ["#a6611a","#dfc27d","#f5f5f5","#80cdc1","#018571"],
    ],
    "PRGn": [
        ["#af8dc3","#f7f7f7","#7fbf7b"],
        ["#7b3294","#c2a5cf","#a6dba0","#008837"],
        ["#7b3294","#c2a5cf","#f7f7f7","#a6dba0","#008837"],
    ],
    "PiYG": [
        ["#e9a3c9","#f7f7f7","#a1d76a"],
        ["#d01c8b","#f1b6da","#b8e186","#4dac26"],
        ["#d01c8b","#f1b6da","#f7f7f7","#b8e186","#4dac26"],
    ],
    "RdBu": [
        ["#ef8a62","#f7f7f7","#67a9cf"],
        ["#ca0020","#f4a582","#92c5de","#0571b0"],
        ["#ca0020","#f4a582","#f7f7f7","#92c5de","#0571b0"],
    ],
    "RdGy": [
        ["#ef8a62","#ffffff","#999999"],
        ["#ca0020","#f4a582","#bababa","#404040"],
        ["#ca0020","#f4a582","#ffffff","#bababa","#404040"],
    ],
    "RdYlBu": [
        ["#fc8d59","#ffffbf","#91bfdb"],
        ["#d7191c","#fdae61","#abd9e9","#2c7bb6"],
        ["#d7191c","#fdae61","#ffffbf","#abd9e9","#2c7bb6"],
    ],
    "Spectral": [
        ["#fc8d59","#ffffbf","#99d594"],
        ["#d7191c","#fdae61","#abdda4","#2b83ba"],
        ["#d7191c","#fdae61","#ffffbf","#abdda4","#2b83ba"],
    ],
    "RdYlGn": [
        ["#fc8d59","#ffffbf","#91cf60"],
        ["#d7191c","#fdae61","#a6d96a","#1a9641"],
        ["#d7191c","#fdae61","#ffffbf","#a6d96a","#1a9641"],
    ],
    "Accent": [
        ["#7fc97f","#beaed4","#fdc086"],
        ["#7fc97f","#beaed4","#fdc086","#ffff99"],
        ["#7fc97f","#beaed4","#fdc086","#ffff99","#386cb0"],
    ],
    "Dark2": [
        ["#1b9e77","#d95f02","#7570b3"],
        ["#1b9e77","#d95f02","#7570b3","#e7298a"],
        ["#1b9e77","#d95f02","#7570b3","#e7298a","#66a61e"],
    ],
    "Paired": [ 
        ["#a6cee3","#1f78b4","#b2df8a"],
        ["#a6cee3","#1f78b4","#b2df8a","#33a02c"],
        ["#a6cee3","#1f78b4","#b2df8a","#33a02c","#fb9a99"],
    ],
    "Pastel1": [ 
        ["#fbb4ae","#b3cde3","#ccebc5"],
        ["#fbb4ae","#b3cde3","#ccebc5","#decbe4"],
        ["#fbb4ae","#b3cde3","#ccebc5","#decbe4","#fed9a6"],
    ],
    "Pastel2": [ 
        ["#b3e2cd","#fdcdac","#cbd5e8"],
        ["#b3e2cd","#fdcdac","#cbd5e8","#f4cae4"],
        ["#b3e2cd","#fdcdac","#cbd5e8","#f4cae4","#e6f5c9"],
    ],
    "Set1": [ 
        ["#e41a1c","#377eb8","#4daf4a"],
        ["#e41a1c","#377eb8","#4daf4a","#984ea3"],
        ["#e41a1c","#377eb8","#4daf4a","#984ea3","#ff7f00"],
    ],
    "Set2": [ 
        ["#66c2a5","#fc8d62","#8da0cb"],
        ["#66c2a5","#fc8d62","#8da0cb","#e78ac3"],
        ["#66c2a5","#fc8d62","#8da0cb","#e78ac3","#a6d854"],
    ],
    "Set": [
        ["#8dd3c7","#ffffb3","#bebada"],
        ["#8dd3c7","#ffffb3","#bebada","#fb8072"],
        ["#8dd3c7","#ffffb3","#bebada","#fb8072","#80b1d3"],
    ],
]


class ColorGradient {
    private var profile: Array<String>?
    private var lastGivenColor = -1

    init(palette: String, colors: Int = 2) {
        if palette == "random" {
            profile = chooseRandomProfile(colors)
        }
        else if let match = profiles[palette] {
            profile = match[colors]
        }
        else {
            NSException(name: "Error", reason: "No matching profile", userInfo: nil).raise()
        }
    }

    func getRandomColor() -> UIColor {
        // Make sure no adjacent colors are returned
        var index = -1

        do {
            index = Int(arc4random()) % profile!.count
        } while index == lastGivenColor

        lastGivenColor = index

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

    private func chooseRandomProfile(colors: Int) -> Array<String>? {
        let keyIndex = Int(arc4random()) % profiles.count

        var count = 0
        for key in profiles.keys {
            if count++ == keyIndex {
                return profiles[key]![colors]
            }
        }

        return nil
    }
}
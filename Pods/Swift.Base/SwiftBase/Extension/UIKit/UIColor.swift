//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import UIKit

private func getRGBValue(hex: String) -> (CGFloat, CGFloat, CGFloat) {
    let str = hex.contains("#") ? hex.replacingOccurrences(of: "#", with: "") : hex
    let scanner = Scanner(string: str)
    scanner.scanLocation = 0
    
    var rgbValue: UInt64 = 0
    scanner.scanHexInt64(&rgbValue)
    
    let r = (rgbValue & 0xff0000) >> 16
    let g = (rgbValue & 0xff00) >> 8
    let b = rgbValue & 0xff
    return (CGFloat(r), CGFloat(g), CGFloat(b))
}

public extension UIColor {
    
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: 1.0
        )
    }
    
    convenience init(netHex: Int) {
        self.init(
            red: (netHex >> 16) & 0xff,
            green: (netHex >> 8) & 0xff,
            blue: netHex & 0xff
        )
    }
    
    convenience init(hex: String) {
        let rgb = getRGBValue(hex: hex)
        self.init(
            red: rgb.0 / 0xff,
            green: rgb.1 / 0xff,
            blue: rgb.2 / 0xff, alpha: 1
        )
    }
    
    convenience init(hex: String, alpha: CGFloat) {
        let rgb = getRGBValue(hex: hex)
        self.init(
            red: rgb.0 / 0xff,
            green: rgb.1 / 0xff,
            blue: rgb.2 / 0xff,
            alpha: alpha
        )
    }
    
    static func random() -> UIColor {
        return UIColor(red: .random(), green: .random(), blue: .random(), alpha: 0.7)
    }
    
    static func dynamic(hex: String, darkHex: String) -> UIColor {
        return UIColor.dynamic(hex: hex, darkHex: darkHex, alpha: 1)
    }
    
    static func dynamic(hex: String, darkHex: String, alpha: CGFloat) -> UIColor {
        if #available(iOS 13.0, *) {
            return UIColor { (collection) -> UIColor in
                if (collection.userInterfaceStyle == .dark) {
                    return UIColor(hex: darkHex, alpha: alpha)
                }
                return UIColor(hex: hex, alpha: alpha)
            }
        } else {
            return UIColor(hex: hex, alpha: alpha)
        }
    }
    
}

//public extension UIColor {
//    
//    static var toast            = UIColor(hex: "#000000", alpha: 0.8)
//    static var mask             = UIColor(hex: "#000000", alpha: 0.5)
//    static var backgroundAlpha  = UIColor(hex: "#000000", alpha: 0.3)
//    static var shadow           = UIColor(hex: "#000000", alpha: 0.1)
//    static var lightShadow      = UIColor(hex: "#000000", alpha: 0.02)
//    
//    static var systemBackground = UIColor.dynamic(hex: "#FFFFFF", darkHex: "#000000")
//    static var background       = UIColor.dynamic(hex: "#F8F8F8", darkHex: "#000000")
//    static var container        = UIColor.dynamic(hex: "#FFFFFF", darkHex: "#1B1C1E")
//    static var containerBG      = UIColor.dynamic(hex: "#F8F8F8", darkHex: "#1B1C1E")
//    static var navigation       = UIColor.dynamic(hex: "#FFFFFF", darkHex: "#000000")
//    
//    static var progress         = UIColor.global
//    static var line             = UIColor.dynamic(hex: "#F0F0F0", darkHex: "#333333")
//    static var splitLine        = UIColor.dynamic(hex: "#F8F8F8", darkHex: "#000000")
//    static var warn             = UIColor.dynamic(hex: "#ED1F1F", darkHex: "#54B8A7")
//    static var `default`        = UIColor.dynamic(hex: "#24252D", darkHex: "#434956")
//    static var highlightDefault = UIColor.dynamic(hex: "#3B3C47", darkHex: "#3B3C47")
//    
//    static var global           = UIColor(hex: "#F58220")
//    static var highlightGlobal  = UIColor(hex: "#FF8F2F")
//    static var lightGlobal      = UIColor(hex: "#FBB843")
//    static var whiteGlobal      = UIColor(hex: "#F2F9F8")
//    static var unable           = UIColor(hex: "#C2C5C9")
//    
//    static var darkText         = UIColor.dynamic(hex: "#333333", darkHex: "#FFFFFF")
//    static var darkGray         = UIColor.dynamic(hex: "#666666", darkHex: "#BBBBBB")
//    static var lightGray        = UIColor(hex: "#999999")
//    static var whiteGray        = UIColor(hex: "##CCCCCC")
//    
//    static var orange           = UIColor(hex: "#FFC25D")
//    static var green            = UIColor(hex: "#54B8A7")
//    static var blue             = UIColor(hex: "#3F81FE")
//    static var red              = UIColor(hex: "#ED1F1F")
//    
//}

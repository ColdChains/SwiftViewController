//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import UIKit

public extension UIFont {
    
    static func defaultFont(size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size)
    }
    
    static func mediumFont(size: CGFloat) -> UIFont {
        return UIFont(name: "PingFangSC-Medium", size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    static func boldFont(size: CGFloat) -> UIFont {
        return UIFont.boldSystemFont(ofSize: size)
    }
    
}

public extension UIFont {
    
    static var large            = UIFont.defaultFont(size: 20)
    static var big              = UIFont.defaultFont(size: 18)
    static var title            = UIFont.defaultFont(size: 17)
    static var standard         = UIFont.defaultFont(size: 16)
    static var normal           = UIFont.defaultFont(size: 14)
    static var small            = UIFont.defaultFont(size: 12)
    
    static var largeMedium      = UIFont.mediumFont(size: 20)
    static var bigMedium        = UIFont.mediumFont(size: 18)
    static var titleMedium      = UIFont.mediumFont(size: 17)
    static var standardMedium   = UIFont.mediumFont(size: 16)
    static var normalMedium     = UIFont.mediumFont(size: 14)
    
    static var largeBold        = UIFont.boldFont(size: 20)
    static var bigBold          = UIFont.boldFont(size: 18)
    static var titleBold        = UIFont.boldFont(size: 17)
    static var standardBold     = UIFont.boldFont(size: 16)
    static var normalBold       = UIFont.boldFont(size: 14)
    
}

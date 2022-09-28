//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import UIKit

public extension UIButton {
    
    func showIndicator() {
        let view = UIView(frame: bounds)
        view.tag = 800
        view.backgroundColor = backgroundColor
        view.layer.cornerRadius = layer.cornerRadius
        let indicator = UIActivityIndicatorView(style: .white)
        view.addSubview(indicator)
        addSubview(view)
        indicator.center = CGPoint(x: width / 2, y: height / 2)
        indicator.startAnimating()
        isEnabled = false
    }
    
    func hideIndicator() {
        isEnabled = true
        viewWithTag(800)?.removeFromSuperview()
    }
    
}

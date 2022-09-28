//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import Foundation
import UIKit

extension UIView {
    
    /// xib文件设置圆角
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
}

extension UIView {
    
    var x: CGFloat {
        get { return frame.origin.x }
        set(newValue) {
            var tempFrame: CGRect = frame
            tempFrame.origin.x    = newValue
            frame                 = tempFrame
        }
    }
    
    var y: CGFloat {
        get { return frame.origin.y }
        set(newValue) {
            var tempFrame: CGRect = frame
            tempFrame.origin.y    = newValue
            frame                 = tempFrame
        }
    }
    
    var height: CGFloat {
        get { return frame.size.height }
        set(newValue) {
            var tempFrame: CGRect = frame
            tempFrame.size.height = newValue
            frame                 = tempFrame
        }
    }
    
    var width: CGFloat {
        get { return frame.size.width }
        set(newValue) {
            var tempFrame: CGRect = frame
            tempFrame.size.width  = newValue
            frame = tempFrame
        }
    }
    
    var size: CGSize {
        get { return frame.size }
        set(newValue) {
            var tempFrame: CGRect = frame
            tempFrame.size        = newValue
            frame                 = tempFrame
        }
    }
    
    var centerX: CGFloat {
        get { return center.x }
        set(newValue) {
            var tempCenter: CGPoint = center
            tempCenter.x            = newValue
            center                  = tempCenter
        }
    }
    
    var centerY: CGFloat {
        get { return center.y }
        set(newValue) {
            var tempCenter: CGPoint = center
            tempCenter.y            = newValue
            center                  = tempCenter;
        }
    }
    
    var centerRect: CGRect {
        return CGRect(x: bounds.midX, y: bounds.midY, width: 0, height: 0)
    }
    
}

extension UIView {
    
    var parentController : UIViewController? {
        var responder = self.next
        while let res = responder {
            if res.isKind(of: UIViewController.self) {
                return res as? UIViewController
            }
            responder = res.next
        }
        return nil
    }
    
    var navigationController : UINavigationController? {
        var responder = self.next
        while let res = responder {
            if res.isKind(of: UINavigationController.self) {
                return res as? UINavigationController
            }
            responder = res.next
        }
        if parentController != nil {
            return parentController?.navigationController
        }
        return nil
    }
    
    var tabBarController : UITabBarController? {
        var responder = self.next
        while let res = responder {
            if res.isKind(of: UITabBarController.self) {
                return res as? UITabBarController
            }
            responder = res.next
        }
        return nil
    }
    
    static var className: String{
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
    
    var className: String {
        get {
            let name =  type(of: self).description()
            if name.contains(".") {
                return name.components(separatedBy: ".")[1];
            } else {
                return name;
            }
        }
    }
    
    func setBadge(_ count: Int, color: UIColor = .red) {
        let text = count > 99 ? "99+" : "\(count)"
        viewWithTag(800)?.removeFromSuperview()
        if count <= 0 {
            return
        }
        var textWidth: CGFloat = 0
        if let label = self as? UILabel, let text = label.text, let font = label.font {
            textWidth = text.boundingRectWidth(with: width, font: font)
        }
        if let button = self as? UIButton, let text = button.titleLabel?.text, let font = button.titleLabel?.font {
            textWidth = text.boundingRectWidth(with: width, font: font)
        }
        var xx: CGFloat = width - (width - textWidth) / 2
        var yy: CGFloat = 2
        if textWidth + 32 > width {
            xx = width - 16 + 5
            yy = -5
        }
        var ww: CGFloat = 16
        if count >= 100 {
            ww = 32
        } else if count >= 10 {
            ww = 24
        }
        let label = UILabel(frame: CGRect(x: xx, y: yy, width: ww, height: 16))
        label.layer.cornerRadius = 8
        label.layer.masksToBounds = true
        label.backgroundColor = color
        label.font = UIFont.boldFont(size: 11)
        label.textAlignment = .center
        label.textColor = .white
        label.text = text
        label.tag = 800
        addSubview(label)
    }
    
    func setRedPoint(_ count: Int, color: UIColor) {
        viewWithTag(801)?.removeFromSuperview()
        if count <= 0 {
            return
        }
        var textWidth: CGFloat = 0
        if let label = self as? UILabel, let text = label.text, let font = label.font {
            textWidth = text.boundingRectWidth(with: width, font: font)
        }
        if let button = self as? UIButton, let text = button.titleLabel?.text, let font = button.titleLabel?.font {
            textWidth = text.boundingRectWidth(with: width, font: font)
        }
        let xx: CGFloat = width - (width - textWidth) / 2
        let yy: CGFloat = (height - 14) / 2 - 8
        let label = UILabel(frame: CGRect(x: xx, y: yy, width: 8, height: 8))
        label.layer.cornerRadius = 4
        label.layer.masksToBounds = true
        label.backgroundColor = color
        label.tag = 801
        addSubview(label)
    }
    
}

extension UIView {
    
    func rotationAnimation(angle: CGFloat) -> Void {
        let degrees = angle * CGFloat(Double.pi) / 180
        transform = CGAffineTransform(rotationAngle: CGFloat(degrees))
    }
    
    func scaleAnimation(scale: CGFloat) -> Void {
        transform = CGAffineTransform(scaleX: scale, y: scale)
    }
    
    func addShadow(_ color: UIColor, offset: CGSize = CGSize(), opacity: Float = 1, radius: CGFloat = 0) {
        layer.shadowColor = color.cgColor
        layer.shadowOffset = offset
        layer.shadowOpacity = opacity
        layer.shadowRadius = radius
    }
    
    func removeShadow() {
        layer.shadowOpacity = 0
    }
    
    func clipsTopCornerRadius(_ radius: CGFloat) -> CAShapeLayer {
        return clipsCornerRadius(radius, positions: [.topLeft, .topRight])
    }
    
    func clipsBottomCornerRadius(_ radius: CGFloat) -> CAShapeLayer {
        return clipsCornerRadius(radius, positions: [.bottomLeft, .bottomRight])
    }
    
    func clipsLeftCornerRadius(_ radius: CGFloat) -> CAShapeLayer {
        return clipsCornerRadius(radius, positions: [.topLeft, .bottomLeft])
    }
    
    func clipsRightCornerRadius(_ radius: CGFloat) -> CAShapeLayer {
        return clipsCornerRadius(radius, positions: [.topRight, .bottomRight])
    }
    
    func clipsCornerRadius(_ radius: CGFloat, positions: UIRectCorner) -> CAShapeLayer {
        let maskPath = UIBezierPath(roundedRect: bounds, byRoundingCorners: positions, cornerRadii: CGSize(width: radius, height: radius))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = bounds
        maskLayer.path = maskPath.cgPath
        layer.mask = maskLayer
        layer.masksToBounds = false
        return maskLayer
    }
    
    func addTransitionColorLeftToRight(_ colors: [UIColor]) -> CAGradientLayer {
        return addTransitionColor(startPoint: CGPoint(x: 0, y: 0), endPoint: CGPoint(x: 1, y: 0), colors: colors)
    }
    func addTransitionColorTopToBottom(_ colors: [UIColor]) -> CAGradientLayer {
        return addTransitionColor(startPoint: CGPoint(x: 0, y: 0), endPoint: CGPoint(x: 0, y: 1), colors: colors)
    }
    func addTransitionColor(startPoint: CGPoint = CGPoint(x: 0, y: 0), endPoint: CGPoint = CGPoint(x: 1, y: 1), colors: [UIColor]) -> CAGradientLayer {
        if colors.count == 0 {
            return CAGradientLayer()
        } else if colors.count == 1 {
            backgroundColor = colors[0]
            return CAGradientLayer()
        }
        let gradientLayer = CAGradientLayer()
        var colorArr: [CGColor] = []
        var locationArr: [NSNumber] = [0]
        for i in 0..<colors.count {
            colorArr.append(colors[i].cgColor)
            if i > 0 {
                locationArr.append(NSNumber(value: Float(i) / Float(colors.count - 1)))
            }
        }
        gradientLayer.colors = colorArr
        gradientLayer.locations = locationArr
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint
        gradientLayer.frame = bounds
        layer.insertSublayer(gradientLayer, at: 0)
        return gradientLayer
    }
    
    func drawLinearGradientLeftToRight(_ colors: [UIColor]) {
        drawLinearGradient(startPoint: CGPoint(x: 0, y: 0), endPoint: CGPoint(x: 1, y: 0), colors: colors)
    }
    func drawLinearGradientTopToBottom(_ colors: [UIColor]) {
        drawLinearGradient(startPoint: CGPoint(x: 0, y: 0), endPoint: CGPoint(x: 0, y: 1), colors: colors)
    }
    func drawLinearGradient(startPoint: CGPoint = CGPoint(x: 0, y: 0), endPoint: CGPoint = CGPoint(x: 1, y: 1), colors: [UIColor]) {
        guard let currentContext = UIGraphicsGetCurrentContext() else { return }
        currentContext.saveGState()
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        
        var colorComponents: [CGFloat] = []
        var locations: [CGFloat] = [0]
        for i in 0..<colors.count {
            if let components = colors[i].cgColor.components {
                for comp in components {
                    colorComponents.append(comp)
                }
            }
            if i > 0 {
                locations.append(CGFloat(i) / CGFloat(colors.count - 1))
            }
        }
        
        guard let gradient = CGGradient(colorSpace: colorSpace, colorComponents: colorComponents, locations: locations, count: locations.count) else { return }
        let start = CGPoint(x: startPoint.x * width, y: startPoint.y * height)
        let end = CGPoint(x: endPoint.x * width, y: endPoint.y * height)
        currentContext.drawLinearGradient(gradient, start: start, end: end, options: CGGradientDrawingOptions(rawValue: UInt32(0)))
        currentContext.restoreGState()
    }
    
    func addHorizontalDashLine(color: UIColor) -> CAShapeLayer {
        addDashLine(startPoint: CGPoint(), endPoint: CGPoint(x: width, y: 0), lineWidth: 1, pattern: [8, 4], color: color)
    }
    func addPortraitDashLine(color: UIColor) -> CAShapeLayer {
        addDashLine(startPoint: CGPoint(), endPoint: CGPoint(x: 0, y: height), lineWidth: 1, pattern: [8, 4], color: color)
    }
    func addBorderDashLine(width: CGFloat, color: UIColor) -> [CAShapeLayer] {
        var arr: [CAShapeLayer] = []
        let patten: Array<NSNumber> = [8, 4]
        arr.append(addDashLine(startPoint: CGPoint(x: 0, y: 0), endPoint: CGPoint(x: 0, y: height), lineWidth: width, pattern: patten, color: color))
        arr.append(addDashLine(startPoint: CGPoint(x: 0, y: 0), endPoint: CGPoint(x: width, y: 0), lineWidth: width, pattern: patten, color: color))
        arr.append(addDashLine(startPoint: CGPoint(x: 0, y: height), endPoint: CGPoint(x: width, y: height), lineWidth: width, pattern: patten, color: color))
        arr.append(addDashLine(startPoint: CGPoint(x: width, y: 0), endPoint: CGPoint(x: width, y: height), lineWidth: width, pattern: patten, color: color))
        return arr
    }
    
    func addDashLine(startPoint: CGPoint, endPoint: CGPoint, lineWidth: CGFloat, pattern: [NSNumber], color: UIColor) -> CAShapeLayer {
        let path = UIBezierPath()
        path.move(to: startPoint)
        path.addLine(to: endPoint)
        
        let borderLayer = CAShapeLayer()
        borderLayer.strokeColor = color.cgColor
        borderLayer.fillColor = nil
        borderLayer.path = path.cgPath
        borderLayer.frame = bounds
        borderLayer.lineWidth = width
        borderLayer.lineCap = .butt
        borderLayer.lineDashPattern = pattern
        layer.addSublayer(borderLayer)
        return borderLayer
    }
    
}

extension UIView {
    
    func addHideKeyboardGestureRecognize() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboardTapAction))
        tap.numberOfTouchesRequired = 1
        tap.cancelsTouchesInView = false
        addGestureRecognizer(tap)
    }
    
    @objc private func hideKeyboardTapAction() {
        endEditing(true)
        parentController?.view.endEditing(true)
    }
    
}

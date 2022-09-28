//
//  BaseConfig.swift
//  SwiftBaseKit
//
//  Created by lax on 2022/9/28.
//

import Foundation
import UIKit

public class BaseConfig {
    
    public static let shared = BaseConfig()
    
    /// 按钮高度
    public var buttonHeight: CGFloat = 44
    
    /// 间距
    public var margin: CGFloat = 16
    
    /// 圆角
    public var cornerRadius: CGFloat = 4
    
    /// 网络超时时间
    public var timeoutInterval: CGFloat = 30
    
    
    /// 页面背景色 默认white
//    public var backgroundColor = UIColor.white
    
    /// 标签栏颜色 默认white
    public var tabBarColor = UIColor.white
    
    /// 标签栏选中颜色 默认darkText
    public var tabBarSelectedColor = UIColor(white: 51 / 255.0, alpha: 1)
    
    /// 导航栏颜色 默认white
    public var navigationBarColor = UIColor.white
    
    /// 导航栏标题颜色 默认darkText
    public var navigationTitleColor = UIColor(white: 51 / 255.0, alpha: 1)
    
    /// 导航栏分割线颜色 默认F8F8F8
    public var dividerColor = UIColor(white: 248.0 / 255.0, alpha: 1)
    
    /// 进度条颜色 默认blue
    public var progressColor = UIColor.blue

    /// 导航栏标题字体 默认16
    public var navigationTitleFont = UIFont.boldSystemFont(ofSize: 16)

    /// 导航栏按钮字体 默认14
    public var navigationButtonFont = UIFont.systemFont(ofSize: 14)

    /// 返回按钮图片
    public var backButtonImage = UIImage()

    /// 关闭按钮图片
    public var closeButtonImage = UIImage()

    /// 是否打印日志 默认false release模式不起作用
    public var logEnabled = false
    
    
    public var globalColor          = UIColor(hex: "#F58220")
    
    public var lightGlobalColor     = UIColor(hex: "#FBB843")
    
    public var darkTextColor        = UIColor.dynamic(hex: "#333333", darkHex: "#FFFFFF")
    
    public var darkGrayColor        = UIColor.dynamic(hex: "#666666", darkHex: "#BBBBBB")
    
    public var lightGrayColor       = UIColor(hex: "#999999")
    
    public var placeholderColor     = UIColor(hex: "#CCCCCC")
    
    public var highlightGlobalColor = UIColor(hex: "#FF8F2F")
    
    public var unableColor          = UIColor(hex: "#C2C5C9")
    
    
    /// 背景颜色
    public var backgroundColor      = UIColor.dynamic(hex: "#F8F8F8", darkHex: "#000000")
    
    /// 背景颜色
    public var containerColor       = UIColor.dynamic(hex: "#FFFFFF", darkHex: "#1B1C1E")
    
    /// 分割线颜色
//    public var dividerColor         = UIColor.dynamic(hex: "#F8F8F8", darkHex: "#000000")
    
    /// 提示框颜色
    public var toastColor           = UIColor(hex: "#000000", alpha: 0.8)
    
    /// 蒙层颜色
    public var maskColor            = UIColor(hex: "#000000", alpha: 0.5)
    
    /// 阴影颜色
    public var shadowColor          = UIColor(hex: "#000000", alpha: 0.1)
    
}

public extension UIColor {
    
    static var global           = BaseConfig.shared.globalColor
    
    static var lightGlobal      = BaseConfig.shared.lightGlobalColor
    
    static var darkText         = BaseConfig.shared.darkTextColor
    
    static var darkGray         = BaseConfig.shared.darkGrayColor
    
    static var lightGray        = BaseConfig.shared.lightGlobalColor
    
    static var placeholder      = BaseConfig.shared.placeholderColor
    
    static var highlightGlobal  = BaseConfig.shared.highlightGlobalColor
    
    static var unable           = BaseConfig.shared.unableColor
    
    
    static var systemBackground = UIColor.dynamic(hex: "#FFFFFF", darkHex: "#000000")
    
    static var background       = BaseConfig.shared.backgroundColor
    
    static var container        = BaseConfig.shared.containerColor
    
    static var divider          = BaseConfig.shared.dividerColor
    
    static var toast            = BaseConfig.shared.toastColor
    
    static var mask             = BaseConfig.shared.maskColor
    
    static var shadow           = BaseConfig.shared.shadowColor
    
}


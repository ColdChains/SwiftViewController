//
//  BaseConfig.swift
//  BaseViewController
//
//  Created by lax on 2022/9/7.
//

import Foundation
import UIKit

public class BaseConfig {
    
    static public var shared = BaseConfig()
    
    /// 页面背景色 默认white
    public var backgroundColor = UIColor.white
    
    /// 标签栏颜色 默认white
    public var tabBarColor = UIColor.white
    
    /// 标签栏选中颜色 默认white
    public var tabBarSelectedColor = UIColor.darkText
    
    /// 导航栏颜色 默认white
    public var navigationBarColor = UIColor.white
    
    /// 导航栏标题颜色 默认darkText
    public var navigationTitleColor = UIColor.darkText
    
    /// 导航栏分割线颜色 默认F8F8F8
    public var dividerColor = UIColor(white: 248.0 / 255.0, alpha: 1)
    
    /// 进度条颜色 默认blue
    public var progressColor = UIColor.blue

    /// 导航栏标题字体 默认16
    public var navigationTitleFont = UIFont.boldSystemFont(ofSize: 16)

    /// 导航栏按钮字体 默认14
    public var navigationButtonFont = UIFont.systemFont(ofSize: 14)

    /// 返回按钮图片
    public var backButtonImage = UIImage(contentsOfFile: Bundle(for: BaseConfig.self).path(forResource: "icon_navigation_back@3x", ofType: "png") ?? "")
    
    /// 关闭按钮图片
    public var closeButtonImage = UIImage(contentsOfFile: Bundle(for: BaseConfig.self).path(forResource: "icon_navigation_close@3x", ofType: "png") ?? "")

    /// 是否打印日志 默认false release模式不起作用
    public var logEnabled = false
    
}

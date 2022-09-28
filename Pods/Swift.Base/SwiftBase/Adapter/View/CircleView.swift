//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import UIKit

class CircleView: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = width < height ? width / 2 : height / 2
    }
    
}

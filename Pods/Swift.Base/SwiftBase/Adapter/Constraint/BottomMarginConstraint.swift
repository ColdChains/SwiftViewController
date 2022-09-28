//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import UIKit

class BottomMarginConstraint: NSLayoutConstraint {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        constant = BottomMargin
    }

}

//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import UIKit

class ButtonHeightConstraint: NSLayoutConstraint {

    override func awakeFromNib() {
        super.awakeFromNib()
        constant = BaseConfig.shared.buttonHeight
    }
    
}

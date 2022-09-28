//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import UIKit

class StatusBarHeightConstraint: NSLayoutConstraint {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        constant = StatusBarHeight
    }

}

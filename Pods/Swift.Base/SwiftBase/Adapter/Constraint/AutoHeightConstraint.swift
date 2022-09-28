//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import Foundation
import UIKit

class AutoHeightConstraint: NSLayoutConstraint {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        constant = constant * ScaleHeight
    }

}

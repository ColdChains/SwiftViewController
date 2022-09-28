//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import Foundation
import UIKit

class AutoWidthConstraint: NSLayoutConstraint {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        constant = constant * ScaleWidth
    }

}

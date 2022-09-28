//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import Foundation
import UIKit

class CornerRadiusBackgroundView: UIView {
    
    override init(frame: CGRect = CGRect()) {
        super.init(frame: frame)
        backgroundColor = .background
        layer.cornerRadius = 4
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .background
        layer.cornerRadius = 4
    }

}

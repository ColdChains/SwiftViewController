//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import UIKit

class CornerRadiusView: UIView {

    override init(frame: CGRect = CGRect()) {
        super.init(frame: frame)
        layer.cornerRadius = BaseConfig.shared.cornerRadius
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = BaseConfig.shared.cornerRadius
    }

}

//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import UIKit

class DividerView: UIView {

    override init(frame: CGRect = CGRect()) {
        super.init(frame: frame)
        backgroundColor = .divider
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .divider
    }

}

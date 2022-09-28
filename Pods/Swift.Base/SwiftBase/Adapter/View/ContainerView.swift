//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import UIKit

class ContainerView: UIView {
    
    override init(frame: CGRect = CGRect()) {
        super.init(frame: frame)
        backgroundColor = .container
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .container
    }

}

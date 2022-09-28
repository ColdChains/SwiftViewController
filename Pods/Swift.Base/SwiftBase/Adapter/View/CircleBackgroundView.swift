//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import UIKit

class CircleBackgroundView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .background
        layer.cornerRadius = height / 2
    }
}

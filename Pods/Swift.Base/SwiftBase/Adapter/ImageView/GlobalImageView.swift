//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import UIKit

class GlobalImageView: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = height / 2
        backgroundColor = .global
    }

}

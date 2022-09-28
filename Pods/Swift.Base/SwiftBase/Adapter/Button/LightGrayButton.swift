//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import UIKit

class LightGrayButton: UIButton {
    
    override init(frame: CGRect = CGRect()) {
        super.init(frame: frame)
        setTitleColor(.lightGray, for: .normal)
        setTitleColor(.darkGray, for: .highlighted)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func awakeFromNib() {
         super.awakeFromNib()
         setTitleColor(.lightGray, for: .normal)
         setTitleColor(.darkGray, for: .highlighted)
    }

}

//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import UIKit

class DarkGrayButton: UIButton {
    
    override init(frame: CGRect = CGRect()) {
        super.init(frame: frame)
        setTitleColor(.darkGray, for: .normal)
        setTitleColor(.darkText, for: .highlighted)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        setTitleColor(.darkGray, for: .normal)
        setTitleColor(.darkText, for: .highlighted)
   }

}

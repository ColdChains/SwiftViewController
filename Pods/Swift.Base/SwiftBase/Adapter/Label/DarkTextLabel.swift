//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import UIKit

class DarkTextLabel: UILabel {
    
    override init(frame: CGRect = CGRect()) {
        super.init(frame: frame)
        textColor = .darkText
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        textColor = .darkText
    }
    
}

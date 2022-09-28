//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import Foundation
import UIKit

class PlaceholderImageView: UIImageView {
    
    override init(frame: CGRect = CGRect()) {
        super.init(frame: frame)
        backgroundColor = .placeholder
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .placeholder
    }

}

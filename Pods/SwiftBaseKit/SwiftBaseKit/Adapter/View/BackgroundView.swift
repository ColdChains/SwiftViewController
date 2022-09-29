//
//  BackgroundView.swift
//  SwiftBaseKit
//
//  Created by lax on 2022/9/28.
//

import UIKit

open class BackgroundView: UIView {
    
    public override init(frame: CGRect = CGRect()) {
        super.init(frame: frame)
        backgroundColor = .background
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    open override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .background
    }

}

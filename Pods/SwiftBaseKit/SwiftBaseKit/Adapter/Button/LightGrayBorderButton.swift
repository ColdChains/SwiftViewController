//
//  LightGrayBorderButton.swift
//  SwiftBaseKit
//
//  Created by lax on 2022/9/28.
//

import UIKit

open class LightGrayBorderButton: UIButton {

    public override init(frame: CGRect = CGRect()) {
        super.init(frame: frame)
        initView()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        initView()
    }
    
    private func initView() {
        layer.cornerRadius = BaseConfig.shared.cornerRadius
        layer.borderWidth = 1
        layer.borderColor = UIColor.lightGray.cgColor
        setTitleColor(.lightGray, for: .normal)
        setTitleColor(.darkText, for: .highlighted)
    }
    
    open override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        layer.borderColor = UIColor.lightGray.cgColor
    }

}

//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import UIKit

class GlobalBorderButton: UIButton {

    override init(frame: CGRect = CGRect()) {
        super.init(frame: frame)
        initView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initView()
    }
    
    private func initView() {
        layer.cornerRadius = 4
        layer.borderWidth = 1
        layer.borderColor = UIColor.global.cgColor
        setTitleColor(.global, for: .normal)
        setTitleColor(.highlightGlobal, for: .highlighted)
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        layer.borderColor = UIColor.global.cgColor
    }

}

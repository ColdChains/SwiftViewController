//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import Foundation
import UIKit

class DarkTextBorderBotton: UIButton {

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
        layer.borderColor = UIColor.darkText.cgColor
        setTitleColor(.darkText, for: .normal)
        setTitleColor(.darkGray, for: .highlighted)
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        layer.borderColor = UIColor.darkText.cgColor
    }

}

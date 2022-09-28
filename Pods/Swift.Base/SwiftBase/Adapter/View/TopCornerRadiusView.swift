//
//  BaseColorConfig.swift
//  SwiftBase
//
//  Created by lax on 2022/9/26.
//

import UIKit

class TopCornerRadiusView: UIView {
    
    override init(frame: CGRect = CGRect()) {
        super.init(frame: frame)
        backgroundColor = .container
        addShadow(.shadow)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .container
        addShadow(.shadow)
    }
    
    var shapeLayer: CAShapeLayer?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        shapeLayer?.removeFromSuperlayer()
        shapeLayer = clipsTopCornerRadius(4)
    }
    
}

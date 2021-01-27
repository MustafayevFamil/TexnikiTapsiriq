//
//  LabelExtension.swift
//  Texniki_tapshiriq
//
//  Created by Famil Mustafayev on 27.01.2021.
//  Copyright © 2021 Famil Mustafayev. All rights reserved.
//

import UIKit
@IBDesignable

class LabelExtension: UILabel {

    private var size = CGSize()
    @IBInspectable var cornerRadiiSize: CGFloat = 0{
        didSet {
            size = CGSize(width: cornerRadiiSize, height: cornerRadiiSize)
        }
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        let shapePlayer = CAShapeLayer()
        shapePlayer.path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: [.topLeft, .bottomRight, .topRight], cornerRadii: size).cgPath
        layer.mask = shapePlayer
    }
    override func prepareForInterfaceBuilder() {
        setNeedsLayout()
    }

}

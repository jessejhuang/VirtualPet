//
//  shake.swift
//  JesseHuang-Lab2
//
//  Created by Jesse Huang on 2/7/17.
//  Entire Shake extension from:
//  http://stackoverflow.com/questions/27987048/shake-animation-for-uitextfield-uiview-in-swift
//

import Foundation
import  UIKit

extension UIView {
    func shake() {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.y")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        animation.duration = 0.3
        animation.values = [-10.0, 10.0, -10.0, 10.0, -5.0, 5.0, -2.5, 2.5, 0.0 ]
        layer.add(animation, forKey: "shake")
    }
}

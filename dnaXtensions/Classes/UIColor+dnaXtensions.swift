//
//  UIColor+dnaXtensions.swift
//
//  Created by Dan Isacson on 2017-02-23.
//
//

import UIKit

extension UIColor {
    
    /// Returns a lighter version of the color. *Optional*: Specify an amount between 0.0 and 1.0.
    public func lighter(_ amount : CGFloat = 0.25) -> UIColor {
        return hueColorWithBrightnessAmount(1 + amount)
    }
    
    /// Returns a darker version of the color. *Optional*: Specify an amount between 0.0 and 1.0.
    public func darker(_ amount : CGFloat = 0.25) -> UIColor {
        return hueColorWithBrightnessAmount(1 - amount)
    }
    
    fileprivate func hueColorWithBrightnessAmount(_ amount: CGFloat) -> UIColor {
        var hue: CGFloat = 0
        var saturation: CGFloat = 0
        var brightness: CGFloat = 0
        var alpha: CGFloat = 0
        
        if getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) {
            return UIColor(hue: hue, saturation: saturation, brightness: brightness * amount, alpha: alpha )
        } else {
            return self
        }
    }
    
}

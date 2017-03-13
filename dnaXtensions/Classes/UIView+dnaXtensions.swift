//
//  UIView+dnaXtensions.swift
//
//  Created by Dan Isacson on 2017-02-23.
//
//

import UIKit

extension UIView {
    
    public func getImageFromView() -> UIImage {
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, UIScreen.main.scale)
        
        drawHierarchy(in: bounds, afterScreenUpdates: true)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
}

//
//  UIImage+dnaXtensions.swift
//
//  Created by Dan Isacson on 2017-03-06.
//
//

import UIKit
import AVFoundation

extension UIImage {
    
    public func transparentized(with alpha: CGFloat) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        draw(at: CGPoint.zero, blendMode: .normal, alpha: alpha)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage ?? self
    }

    /// Returns self as a scaled image of given size.
    public func scaled(to size : CGSize, isOpaque : Bool = true) -> UIImage {
        // begin a context of the desired size
        let scaledRect = AVMakeRect(aspectRatio: size, insideRect: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        UIGraphicsBeginImageContextWithOptions(scaledRect.size, isOpaque, 0.0)
        
        // draw image in the rect with zero origin and size of the context
        let imageRect = CGRect(origin: CGPoint.zero, size: scaledRect.size)
        draw(in: imageRect)
        
        // get the scaled image, close the context and return the image
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return scaledImage ?? self
    }

}

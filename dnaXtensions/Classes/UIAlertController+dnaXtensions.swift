//
//  UIAlertController+dnaXtensions.swift
//  Pods
//
//  Created by Dan Isacson on 2017-03-13.
//
//

import UIKit

extension UIAlertController {
    
    public func addAction(title: String, style: UIAlertAction.Style = .default, handler: ((UIAlertAction) -> Void)? = nil) {
        let action = UIAlertAction(title: title, style: style, handler: handler)
        addAction(action)
    }
    
}

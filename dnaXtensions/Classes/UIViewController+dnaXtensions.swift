//
//  UIViewController+dnaXtensions.swift
//
//  Created by Dan Isacson on 2017-02-23.
//
//

import UIKit

extension UIViewController {
    
    public func removeNavigationBarHairLine() {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .any, barMetrics: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    public func restoreNavigationBarHairLine() {
        navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
        navigationController?.navigationBar.shadowImage = nil
    }
    
    /// Adds a tap gesture recognizer to the view controller's view to dismiss the keyboard.
    public func addTapToDismissKeyboardGesture() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc public func dismissKeyboard() {
        view.endEditing(true)
    }
    
}

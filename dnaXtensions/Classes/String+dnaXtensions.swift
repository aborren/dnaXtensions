//
//  String+dnaXtensions.swift
//
//  Created by Dan Isacson on 2017-02-23.
//
//

import Foundation

extension String {
    
    /**
        Returns the localized String for the key *self*.
     
        - Parameter tableName: Set this to the file name where the localization key is stored if it's not in the default *localizable.strings* file.
        - Parameter preferredLanguage: Set this to change preferred language.
    
        - Returns: The localized version of *self*.
     */
    public func localized(tableName: String? = nil, preferredLanguage: String? = nil) -> String {
        guard let language = preferredLanguage, let path = Bundle.main.path(forResource: language, ofType: "lproj"), let bundle = Bundle(path: path) else {
            return NSLocalizedString(self, tableName: tableName, comment: "")
        }
        
        return bundle.localizedString(forKey: self, value: nil, table: tableName)
    }
    
    
    public func contains(_ find: String) -> Bool {
        return self.range(of: find) != nil
    }
    
}

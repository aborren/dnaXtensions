//
//  Date+dnaXtensions.swift
//
//  Created by Dan Isacson on 2017-02-23.
//
//

import Foundation

extension Date {
    
    public func isEqualToDateIgnoringTime(_ otherDate: Date) -> Bool {
        let calendar = Calendar.current
        let componentsSelf = (calendar as NSCalendar).components([.year, .month, .day], from: self)
        let componentsOther = (calendar as NSCalendar).components([.year, .month, .day], from: otherDate)
        
        return (componentsSelf.year == componentsOther.year) && (componentsSelf.month == componentsOther.month) && (componentsSelf.day == componentsOther.day)
    }
    
    public func isToday() -> Bool {
        return self.isEqualToDateIgnoringTime(Date())
    }
    
    public func isTomorrow() -> Bool {
        return self.isEqualToDateIgnoringTime(Date().addingTimeInterval(86400))
    }
    
    public func isYesterday() -> Bool {
        return self.isEqualToDateIgnoringTime(Date().addingTimeInterval(-86400))
    }
    
}

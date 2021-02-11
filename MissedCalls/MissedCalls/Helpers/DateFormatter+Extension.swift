//
//  DateFormatter+Extension.swift
//  MissedCalls
//
//  Created by Станислав Лемешаев on 11.02.2021.
//

import Foundation

extension DateFormatter {
    
    static func formatTime(from string: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"
        
        if let input = dateFormatter.date(from: string) {
            dateFormatter.dateFormat = "mm:ss"
            return dateFormatter.string(from: input)
        }
        return ""
    }
    
    static func formatCall (from string: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.754Z"
        dateFormatter.timeZone = NSTimeZone(abbreviation: "UTC") as TimeZone?
        if let input = dateFormatter.date(from: string) {
            dateFormatter.dateFormat = "HH:mm a"
            return dateFormatter.string(from: input)
        }
        return " "
    }
    
}

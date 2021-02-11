//
//  String+Extension.swift
//  MissedCalls
//
//  Created by Станислав Лемешаев on 11.02.2021.
//

import Foundation

extension String {
    
    static func format(with mask: String, phone: String) -> String {
        let numbers = phone.replacingOccurrences(of: "[^0-9]", with: "", options: .regularExpression)
        var resultNumber = ""
        var index = numbers.startIndex
        
        for character in mask where index < numbers.endIndex {
            if character == "X" {
                resultNumber.append(numbers[index])
                index = numbers.index(after: index)
            } else {
                resultNumber.append(character)
            }
        }
        return resultNumber
    }
    
}

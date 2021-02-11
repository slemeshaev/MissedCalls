//
//  MissedCallViewModel.swift
//  MissedCalls
//
//  Created by Станислав Лемешаев on 11.02.2021.
//

import Foundation

final class MissedCallViewModel {
    
    private let missedCalls: MissedCall
    
    var name: String {
        return missedCalls.name
    }

    var number: String {
        return missedCalls.number
    }
    
    var duration: String {
        return missedCalls.duration
    }
    
    var dataCall: String {
        return missedCalls.dataCall
    }
    
    init(missedCalls: MissedCall) {
        self.missedCalls = missedCalls
    }
    
}

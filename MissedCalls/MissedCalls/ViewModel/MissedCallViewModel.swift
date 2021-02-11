//
//  MissedCallViewModel.swift
//  MissedCalls
//
//  Created by Станислав Лемешаев on 11.02.2021.
//

import Foundation

struct MissedCallViewModel {
    
    private let missedCall: MissedCall
    
    var name: String {
        return missedCall.name
    }

    var number: String {
        return missedCall.number
    }
    
    var duration: String {
        return missedCall.duration
    }
    
    var dataCall: String {
        return missedCall.dataCall
    }
    
    init(missedCalls: MissedCall) {
        self.missedCall = missedCalls
    }
    
}

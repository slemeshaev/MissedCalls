//
//  DecodeData.swift
//  MissedCalls
//
//  Created by Станислав Лемешаев on 11.02.2021.
//

import UIKit

struct DecodeData {
    
    func decodeJSON(data: Data, decoder: JSONDecoder) -> [MissedCall]? {
        var calls: [MissedCall] = []
        do {
            let missedCall = try decoder.decode(ClientsResponse.self, from: data)
            for call in missedCall.requests {
                let name = call.client.Name ?? String.format(with: "+X XXX XXX-XXXX", phone: call.client.address)
                let number = String.format(with: "+X XXX XXX-XXXX", phone: call.client.address )
                let businessName = call.businessNumber.label
                let businessNumber = String.format(with: "+X XXX XXX-XXXX", phone: call.businessNumber.number)
                let duration = DateFormatter.formatTime(from: call.duration)
                let dataCall = DateFormatter.formatCall(from: call.created)
                let missedCalls = MissedCall.init(name: name, number: number, businessName: businessName, businessNumber: businessNumber, duration: duration, dataCall: dataCall)
           
                calls.append(missedCalls)
            }
        } catch {
            print("Error:\(error.localizedDescription)")
        }
        return calls
    }
    
}

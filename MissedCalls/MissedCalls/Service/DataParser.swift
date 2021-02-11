//
//  DataParser.swift
//  MissedCalls
//
//  Created by Станислав Лемешаев on 11.02.2021.
//

import UIKit

struct DataParser {
    func parseData(data: Data, decoder: JSONDecoder) -> [MissedCall]? {
        var calls: [MissedCall] = []
        do {
            let missedCall = try decoder.decode(ClientsResponse.self, from: data)
            for call in missedCall.requests {
                let name = call.client.Name ?? String.for
            }
        }
    }
}

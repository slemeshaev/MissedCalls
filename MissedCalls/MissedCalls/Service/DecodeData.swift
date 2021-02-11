//
//  DecodeData.swift
//  MissedCalls
//
//  Created by Станислав Лемешаев on 11.02.2021.
//

import UIKit

struct DecodeData {
    <#fields#>
}

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

//// декодируем данные JSON
//func decodeJSON<T: Decodable>(type: T.Type, from: Data?) -> T? {
//    let decoder = JSONDecoder()
//    guard let data = from else { return nil }
//
//    do {
//        let objects = try decoder.decode(type.self, from: data)
//        return objects
//    } catch let jsonError {
//        print("Ошибка декодирования данных JSON \(jsonError)")
//        return nil
//    }
//}

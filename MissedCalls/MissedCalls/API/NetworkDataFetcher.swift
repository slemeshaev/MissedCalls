//
//  NetworkDataFetcher.swift
//  MissedCalls
//
//  Created by Станислав Лемешаев on 10.02.2021.
//

import Foundation

class NetworkDataFetcher {
    
    static func getClients(completion: @escaping (ClientsResponse?) -> ()) {
        
        let urlString = "https://5e3c202ef2cb300014391b5a.mockapi.io/testapi"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            guard error == nil else { return }
            do {
                let clientsJson = try JSONDecoder().decode(ClientsResponse.self, from: data)
                print(clientsJson)
//                let array = json as! [[String: Any]]
//                let users = array.map { User(json: $0) }
            } catch let error {
                print(error)
            }
        }.resume()
        
    }
    
}

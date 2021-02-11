//
//  NetworkDataFetcher.swift
//  MissedCalls
//
//  Created by Станислав Лемешаев on 10.02.2021.
//

import Foundation

final class NetworkDataFetcher {
    
    private let decodeData = DecodeData()
    
    func fetchClients(completion: @escaping (Result<[MissedCall], Error>) -> ()) {
        
        let urlString = "https://5e3c202ef2cb300014391b5a.mockapi.io/testapi"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            DispatchQueue.main.async {
                if let error = error {
                    print(error.localizedDescription)
                    completion(.failure(error))
                    return
                }
                
                if let data = data {
                    guard let data = self.decodeData.decodeJSON(data: data, decoder: JSONDecoder()) else { return }
                    
                    DispatchQueue.main.async {
                        completion(.success(data))
                    }
                }
            }
        }.resume()
    }
    
}

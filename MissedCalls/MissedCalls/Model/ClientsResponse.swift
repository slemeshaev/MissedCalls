//
//  ClientsResponse.swift
//  MissedCalls
//
//  Created by Станислав Лемешаев on 10.02.2021.
//

import Foundation

struct ClientsResponse: Hashable, Decodable {
    let requests: [Person]?
}

struct Person: Hashable, Decodable {
    let id: String?
    let client: Client?
    let businessNumber: BusinessNumber?
    let duration: String?
}

struct Client: Hashable, Decodable {
    let address: String?
    let Name: String?
}

struct BusinessNumber: Hashable, Decodable {
    let number: String
    let label: String
}

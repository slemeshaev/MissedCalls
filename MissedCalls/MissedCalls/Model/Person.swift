//
//  Person.swift
//  MissedCalls
//
//  Created by Станислав Лемешаев on 10.02.2021.
//

import Foundation

struct ClientsResponse: Decodable {
    let requests: [Person]?
}

struct Person: Decodable {
    let id: String?
    let client: Client?
    let businessNumber: BusinessNumber?
    let duration: String?
}

struct Client: Decodable {
    let address: String?
    let Name: String?
}

struct BusinessNumber: Decodable {
    let number: String
    let label: String
}

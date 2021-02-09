//
//  Person.swift
//  MissedCalls
//
//  Created by Станислав Лемешаев on 10.02.2021.
//

import Foundation

struct Person {
    let id: String
    let client: Client
    let businessNumber: BusinessNumber
    let duration: String
}

struct Client {
    let address: String
    let Name: String
}

struct BusinessNumber {
    let number: String
    let label: String
}

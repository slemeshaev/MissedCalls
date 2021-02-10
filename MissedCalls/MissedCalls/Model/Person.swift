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
    
    init(json: [String: Any]) {
        self.id = json["id"] as? String ?? ""
        let clientJson = json["client"] as! [String: Any]
        self.client = Client(json: clientJson)
        let businessNumberJson = json["businessNumber"] as! [String: Any]
        self.businessNumber = BusinessNumber(json: businessNumberJson)
        self.duration = json["duration"] as? String ?? ""
    }
    
}

struct Client {
    let address: String
    let Name: String
    
    init(json: [String: Any]) {
        self.address = json["address"] as? String ?? ""
        self.Name = json["Name"] as? String ?? ""
    }
}

struct BusinessNumber {
    let number: String
    let label: String
    
    init(json: [String: Any]) {
        self.number = json["number"] as? String ?? ""
        self.label = json["label"] as? String ?? ""
    }
}

//
//  TableMissedCallViewModelType.swift
//  MissedCalls
//
//  Created by Станислав Лемешаев on 11.02.2021.
//

import Foundation

protocol TableMissedCallViewModelType: class {
    var name: String { get }
    var number: String { get }
    var duration: String { get }
    var dataCall: String { get }
}

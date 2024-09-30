//
//  User.swift
//  Watermoon
//
//  Created by serkan on 10.09.2024.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}

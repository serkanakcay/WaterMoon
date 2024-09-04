//
//  WaterCup.swift
//  Watermoon
//
//  Created by serkan on 3.07.2024.
//

import Foundation

struct WaterCup : Identifiable, Hashable, Codable{
    let id: String
    let LitreName: String
    let Litre: Int
    let cupImage: String
    var progress: CGFloat
}

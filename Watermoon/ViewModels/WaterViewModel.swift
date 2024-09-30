//
//  WaterViewModel.swift
//  Watermoon
//
//  Created by serkan on 3.07.2024.
//

import SwiftUI
import Foundation

@Observable 
class WaterViewModel{
    var cups: [WaterCup] = [
        .init(id: UUID().uuidString, LitreName: "100ml", Litre: 100, cupImage: "abc", progress: 0.1),
        .init(id: UUID().uuidString, LitreName: "250ml", Litre: 250, cupImage: "abc", progress: 0.2),
        .init(id: UUID().uuidString, LitreName: "350ml", Litre: 350, cupImage: "abc", progress: 0.3),
        .init(id: UUID().uuidString, LitreName: "400ml", Litre: 400, cupImage: "abc", progress: 0.4),
        .init(id: UUID().uuidString, LitreName: "500ml", Litre: 500, cupImage: "abc", progress: 0.5)
        
    ]
    
    func getProgress(for cup: WaterCup) -> Double {
          return cup.progress
      }
  }

        
    

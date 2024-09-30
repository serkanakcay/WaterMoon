//
//  TargetViewViewModel.swift
//  Watermoon
//
//  Created by serkan on 26.09.2024.
//

import Foundation
import SwiftUI
@Observable
class TargetViewViewModel{
     var prest: Double = 0.0
    
    func addTarget() {
        // Hedefi ekle fonksiyonu
        print("Yeni hedef: \(Int(prest)) ml")
    }
}

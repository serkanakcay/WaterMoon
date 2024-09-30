//
//  WatermoonApp.swift
//  Watermoon
//
//  Created by serkan on 28.06.2024.
//

import FirebaseCore
import SwiftUI

@main
struct WatermoonApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
           
            MainView()
        }
    }
}

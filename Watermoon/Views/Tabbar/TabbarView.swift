//
//  TabbarView.swift
//  Watermoon
//
//  Created by serkan on 28.06.2024.
//

import SwiftUI

struct TabbarView: View {
    @State var selecetedItem: Int = 0
    
    var body: some View {
        
            
            
            TabView(selection: $selecetedItem){
                WaterView()
                    .tabItem{
                        Label("Su", systemImage: "drop.degreesign")
                            .environment(\.symbolVariants, selecetedItem == 0 ? .fill : .none)
                    }
                    .tag(0)
                
                StatsView()
                    .tabItem{
                        Label("Özet", systemImage: "chart.bar")
                            .environment(\.symbolVariants, selecetedItem == 1 ? .fill : .none)
                    }
                    .tag(1)
                
              SettingView()
                    .tabItem{
                        Label("Ayarlar", systemImage: "person")
                            .environment(\.symbolVariants, selecetedItem == 2 ? .fill : .none)
                    }
                    .tag(2)
                
            }
           
           
            .accentColor(.main)
        
        
        
    }
        
            
            
        
    }


#Preview {
    TabbarView()
}

//
//  TargetView.swift
//  Watermoon
//
//  Created by serkan on 5.07.2024.
//

import SwiftUI

struct TargetView: View {
    @State var prest: Double =  0.0
    var body: some View {
        ZStack{
            Color.golge.opacity(0.4)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                VStack{
                    Text("Günlük")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                         Text("Hedefinizi Giriniz?")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.largeTitle)
                }
               
                HStack{
                    Text("\(Int(prest))")
                        .font(.title)
                        .underline()
                
                        .padding()
                    
                    Text("ml")
                        .font(.headline)
                       
                }
                Slider(value: $prest, in: 100...900, step: 100)
                HStack{
                    Text("0 ml")
                        .font(.caption)
                    
                    Spacer()
                    Text("900 ml")
                        .font(.caption)
                }
                
                    .accentColor(.golge)
                    .cornerRadius(20)
          RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.main, lineWidth: 1)
                    .frame(width: 120, height: 40)
                    .shadow(color: .gray.opacity(0.1), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay {
                        Button(action: {}, label: {
                            Text("Ekle")
                                .foregroundStyle(.black)
                        })
                    }
                
                
            }
            .padding(50)
         Spacer()
        }
     
        
    }
        
}

#Preview {
    TargetView()
}

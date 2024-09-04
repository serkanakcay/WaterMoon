//
//  WaterCupView.swift
//  Watermoon
//
//  Created by serkan on 3.07.2024.
//

import SwiftUI

struct WaterCupView: View {
    @State private var isFirstTap = true // İlk tıklama için bayrak tanımlayın
    @Binding var progeresm: CGFloat

    @State var waterModel = WaterViewModel()

    init(progeresm: Binding<CGFloat>,waterModel: WaterViewModel = WaterViewModel()) {
        self._progeresm = progeresm
        self.waterModel = waterModel
    }
    var body: some View {
        VStack{
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(waterModel.cups){ cup in
                        VStack{
                            RoundedRectangle(cornerRadius: 10)
                                
                                .stroke(Color.gray.opacity(0.1), lineWidth: 1)
                                .frame(width: 80, height:80)
                                .shadow(color: .water.opacity(0.2), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            
                                .overlay {
                                    VStack{
                                        Button(action: {
                                      /*  let progress = waterModel.getProgress(for: cup)
                                   print("Progress for \(cup.LitreName): \(progress)")
                                            self.progeresm += progress
*/
                                            if isFirstTap  == true {
                                                           let progress = waterModel.getProgress(for: cup)
                                                           print("Progress for \(cup.LitreName): \(progress)")
                                                self.progeresm += progress - (0.5)// Yalnızca ilk tıklamada 0.5 ekleyin
                                                           self.isFirstTap = false // İlk tıklama yapıldı, bayrağı false yapın
                                            } else {
                                                let progress = waterModel.getProgress(for: cup)
                                                print("Progress for \(cup.LitreName): \(progress)")
                                     self.progeresm += progress // Yalnızca ilk tıklamada 0.5 ekleyin
                                            }
                                           
                                         

                                        }, label: {
                                            Image(cup.cupImage)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .scaledToFit()
                                        })
                                        
                                    
                                    
                                    }
                                    .padding(5)}
                            
                            Text(cup.LitreName)
                                .font(.caption)
                                .foregroundStyle(.black)
                            
                            
                        }
                        
                        
                        
                    }
                    
                    
                }
            }
            
        }
        
        
    }
}

#Preview {
    WaterCupView(progeresm: .constant(0.3))
}


//
//  GoalWaterView.swift
//  Watermoon
//
//  Created by serkan on 4.07.2024.
//

import SwiftUI

struct GoalWaterView: View {
   @State private var goalShowSets = false
    var body: some View {
        VStack{
        Button {
            goalShowSets.toggle()
        } label: {
           /* RoundedRectangle(cornerRadius: 0)
            
                .stroke(Color.gray, lineWidth: 1)
                .frame(width: .infinity, height:80)
                .shadow(color: .water.opacity(0.2), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            
                .overlay {
                    VStack(alignment: .leading){
                        Text("Günlük Su Alarmını Ayarla")
                            .font(.caption)
                            .foregroundStyle(.black)
                        Text("Günlük Su Alarmını Ayarla")
                    }
            */
            
        
            RoundedRectangle(cornerRadius: 8)
                
                .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                      .shadow(color: .gray.opacity(0.1), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                      //.frame(width: .infinity, height: 70)
                      .overlay {
                          Button(action: {
                              
                              goalShowSets.toggle()
                                
                               
                          }, label: {
                           
                                  
                                  HStack{
                                      
                               Image(systemName: "drop.degreesign")
                                      
                                      VStack(alignment: .leading){
                                      Text("Günlük Hedefini Ayarla")
                                      
                                          .foregroundStyle(.black)
                                      Text("Henüz Ayarlanmadı")
                                          .foregroundStyle(.gray)
                                          .font(.caption)
                              
                              }
                                      Spacer()
                                      RoundedRectangle(cornerRadius: 8)
                                     .frame(width: 10, height: 10)
                              }
                                  .padding()
                          }
                            
                          )                       }
                }
        }
       
        .sheet(isPresented: $goalShowSets, content: {
            TargetView()
                .presentationDetents([.medium, .large])
        })
       
    }
       
    
   
    }



#Preview {
    GoalWaterView()
}

//
//  TargetView.swift
//  Watermoon
//
//  Created by serkan on 5.07.2024.
//
import SwiftUI

struct TargetView: View {
    @State var viewModel = TargetViewViewModel()
    
    var body: some View {
        ZStack {
            Color.golge.opacity(0.4)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack {
                    Text("Günlük")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Hedefinizi Giriniz?")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.largeTitle)
                }
                
                HStack {
                    Text("\(Int(viewModel.prest))")
                        .font(.title)
                        .underline()
                        .padding()
                    
                    Text("ml")
                        .font(.headline)
                }
                
                Slider(value: $viewModel.prest, in: 100...3000, step: 100)
                
                HStack {
                    Text("100 ml")
                        .font(.caption)
                    
                    Spacer()
                    Text("3000 ml")
                        .font(.caption)
                }
                .accentColor(.golge)
                .cornerRadius(20)
                
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.main, lineWidth: 1)
                    .frame(width: 120, height: 40)
                    .shadow(color: .gray.opacity(0.1), radius: 10)
                    .overlay {
                        Button(action: {
                            viewModel.addTarget()
                        }, label: {
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

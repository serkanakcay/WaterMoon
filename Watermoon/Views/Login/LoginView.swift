//
//  LoginView.swift
//  Watermoon
//
//  Created by serkan on 23.07.2024.
//

import SwiftUI

struct LoginView: View {
    @State var Email = ""
    @State var Password = ""
    var body: some View {
        
        NavigationStack{
            VStack{
                VStack(alignment: .leading){
                    Text("Giriş Yap")
                        .fontDesign(.rounded)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text("Hoşgeldiniz  Lütfen Giriş Yapın!")
                        .font(.title2)
                        .fontDesign(.rounded)
                        .fontWeight(.light)
                    
                    Text("Email")
                        .font(.subheadline)
                        .fontDesign(.rounded)
                        .fontWeight(.light)
                        .padding(.top)
                    TextField("Email Adresiniz", text:$Email)
                        .padding(.leading)
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.gray.opacity(0.1), lineWidth: 2)
                        )
                    
                        .overlay(alignment: .trailing) {
                            Image(systemName: "at")
                                .opacity(0.2)
                                .padding(.trailing)
                        }
                    
                    Text("Şifre")
                        .font(.subheadline)
                        .fontDesign(.rounded)
                        .fontWeight(.light)
                        .padding(.top)
                    SecureField("Şifreniz", text:$Email)
                        .padding(.leading)
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.gray.opacity(0.1), lineWidth: 2)
                        )
                        .overlay(alignment: .trailing) {
                            Image(systemName: "eye.slash")
                                .opacity(0.2)
                                .padding(.trailing)
                        }
                    
                    HStack{
                        
                        Spacer()
                        Text("Şifrenmi unuttum?")
                            .font(.subheadline)
                            .fontDesign(.rounded)
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                        
                    }
                    .foregroundColor(.gray.opacity(1))
                    
                    
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Giriş Yap")
                        .font(.headline)
                        .foregroundStyle(.white)
                })
                .frame(maxWidth: .infinity, maxHeight: 55)
                .background(Color.water, in:.rect(cornerRadius: 8))
                
            }
            .padding()
            VStack{
                Divider()
                    .opacity(0.2)
                    .overlay {
                        Text("Veya")
                    }
            }
            .padding()
            HStack{
                
                
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.white)
                    .stroke(Color.gray.opacity(0.1), lineWidth: 1)
                    .frame(width: .infinity, height: 60)
                    .padding()
                
                    .overlay {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            HStack{
                                Image("google")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .scaledToFit()
                                
                                Text("Google ile Giriş Yap")
                                    .font(.headline)
                                    .foregroundStyle(.black)
                            }
                        })
                        .padding(10)
                        
                        
                        
                        
                    }
                
            }
            HStack{
                Text("Üyeliğin Yok mu? ")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                NavigationLink {
                    RegisterView()
                } label: {
                    Text("Kayıt Ol")
                }
                
            }
        }
    }
}

#Preview {
    LoginView()
}

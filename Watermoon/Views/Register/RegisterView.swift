//
//  RegisterView.swift
//  Watermoon
//
//  Created by serkan on 24.07.2024.
//

import SwiftUI

struct RegisterView: View {
    @State var Email = ""
    @State var Password = ""
    var body: some View {
        NavigationStack{
            VStack{
                VStack(alignment: .leading){
                    Text("Kayıt Ol")
                        .fontDesign(.rounded)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text("Hoşgeldiniz  Lütfen Kayıt Olun!")
                        .font(.title2)
                        .fontDesign(.rounded)
                        .fontWeight(.light)
                    
                    Text("Adınız")
                        .font(.subheadline)
                        .fontDesign(.rounded)
                        .fontWeight(.light)
                        .padding(.top)
                    TextField("Tam Adınız", text: $Email)
                        .padding(.leading)
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.gray.opacity(0.1), lineWidth: 2)
                        )
                        .overlay(alignment: .trailing) {
                            Image(systemName: "person")
                                .opacity(0.2)
                                .padding(.trailing)
                        }
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
                    
                        
                    
                    
                }
               
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Kayıt Ol")
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
                                
                                Text("Google ile Kayıt Ol")
                                    .font(.headline)
                                    .foregroundStyle(.black)
                            }
                        })
                        .padding(10)
                        
                        
                        
                        
                    }
                
            }
            HStack{
                Text("Üyeliğin Var Mı? ")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                NavigationLink {
                    LoginView()
                } label: {
                    Text("Giriş Yap")
                }

                
            }
        }
    }
}
    
#Preview {
    RegisterView()
}

//
//  LoginView.swift
//  Watermoon
//
//  Created by serkan on 23.07.2024.
//

import SwiftUI

struct LoginView: View {
    @State private var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack(alignment: .leading) {
                    Text("Giriş Yap")
                        .fontDesign(.rounded)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text("Hoşgeldiniz  Lütfen Giriş Yapın!")
                        .font(.title2)
                        .fontDesign(.rounded)
                        .fontWeight(.light)
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    Text("Email")
                        .font(.subheadline)
                        .fontDesign(.rounded)
                        .fontWeight(.light)
                        .padding(.top)
                    
                    TextField("Email Adresiniz", text: $viewModel.email)
                        .padding(.leading)
                        .frame(maxWidth: .infinity) // max genişlik sağlanıyor
                        .frame(height: 55) // Sabit height kullanılıyor
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
                    
                    SecureField("Şifreniz", text: $viewModel.password)
                        .padding(.leading)
                        .frame(maxWidth: .infinity) // max genişlik sağlanıyor
                        .frame(height: 55) // Sabit height kullanılıyor
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.gray.opacity(0.1), lineWidth: 2)
                        )
                        .overlay(alignment: .trailing) {
                            Image(systemName: "eye.slash")
                                .opacity(0.2)
                                .padding(.trailing)
                        }
                    
                    HStack {
                        Spacer()
                        Text("Şifrenmi unuttum?")
                            .font(.subheadline)
                            .fontDesign(.rounded)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                    .foregroundColor(.gray)
                }
                
                Button(action: {
                    viewModel.login()
                    print("logine tıklandı")
                }, label: {
                    Text("Giriş Yap")
                        .font(.headline)
                        .foregroundColor(.white)
                })
                .frame(maxWidth: .infinity) // max genişlik sağlanıyor
                .frame(height: 55) // Sabit height kullanılıyor
                .background(Color.main, in: RoundedRectangle(cornerRadius: 8))
            }
            .padding()
            
            VStack {
                Divider()
                    .opacity(0.2)
                    .overlay {
                        Text("Veya")
                    }
            }
            .padding()
            
            HStack {
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.white)
                    .frame(maxWidth: .infinity) // max genişlik sağlanıyor
                    .frame(height: 60) // Sabit height kullanılıyor
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray.opacity(0.1), lineWidth: 1)
                    )
                    .overlay {
                        Button(action: {
                            // Google ile giriş yapma aksiyonu
                        }, label: {
                            HStack {
                                Image("google")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .scaledToFit()
                                
                                Text("Google ile Giriş Yap")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        })
                        .padding(10)
                    }
            }
            .padding()
            
            HStack {
                Text("Üyeliğin Yok mu? ")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
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

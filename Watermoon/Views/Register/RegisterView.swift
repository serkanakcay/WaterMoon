//
//  RegisterView.swift
//  Watermoon
//
//  Created by serkan on 24.07.2024.
//

import SwiftUI

struct RegisterView: View {
   @State var viewModel = RegisterViewViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                VStack(alignment: .leading) {
                    Text("Kayıt Ol")
                        .fontDesign(.rounded)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text("Hoşgeldiniz, Lütfen Kayıt Olun!")
                        .font(.title2)
                        .fontDesign(.rounded)
                        .fontWeight(.light)
                    
                    // Hata mesajı gösterimi
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)
                    }
                    
                    // Adınız alanı
                    Text("Adınız")
                        .font(.subheadline)
                        .fontDesign(.rounded)
                        .fontWeight(.light)
                        .padding(.top)
                    
                    TextField("Tam Adınız", text: $viewModel.name)
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
                    
                    // Email alanı
                    Text("Email")
                        .font(.subheadline)
                        .fontDesign(.rounded)
                        .fontWeight(.light)
                        .padding(.top)
                    
                    TextField("Email Adresiniz", text: $viewModel.email)
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
                    
                    // Şifre alanı
                    Text("Şifre")
                        .font(.subheadline)
                        .fontDesign(.rounded)
                        .fontWeight(.light)
                        .padding(.top)
                    
                    SecureField("Şifreniz", text: $viewModel.password)
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
                
                // Kayıt Ol butonu
                Button(action: {
                    viewModel.register()
                }, label: {
                    Text("Kayıt Ol")
                        .font(.headline)
                        .foregroundStyle(.white)
                })
                .frame(maxWidth: .infinity, maxHeight: 55)
                .background(Color.water, in: RoundedRectangle(cornerRadius: 8))
                
                // Veya
                VStack {
                    Divider()
                        .opacity(0.2)
                        .overlay {
                            Text("Veya")
                        }
                }
                .padding()
                
                // Google ile Kayıt Ol butonu
                HStack {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.white)
                        .stroke(Color.gray.opacity(0.1), lineWidth: 1)
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .padding()
                        .overlay {
                            Button(action: {} , label: {
                                HStack {
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
                
                // Üyeliğin var mı? Giriş yap
                HStack {
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
            .padding()
        }
    }
}

#Preview {
    RegisterView()
}

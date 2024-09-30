//
//  LoginViewViewModel.swift
//  Watermoon
//
//  Created by serkan on 9.09.2024.
//

import Foundation

@Observable class LoginViewViewModel{
    var email = ""
    var password = ""
    var errorMessage = ""
    
    init(){}
    
    func login(){
        guard validate() else{
            return
        }
    }
    
    func validate()-> Bool{
        
        errorMessage = ""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty
        else{
            errorMessage = "Lütfen Tüm Alanları Eksiksiz Doldurun."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Lütfen Geçerli Bir Email Adresi giriniz"
            return false
        }
        
        return true
        
    }
    
}

//
//  RegisterViewViewModel.swift
//  Watermoon
//
//  Created by serkan on 9.09.2024.
//
import Firebase
import FirebaseFirestore
import Foundation

@Observable class RegisterViewViewModel {
    var name = ""
    var email = ""
    var password = ""
    var errorMessage = ""
    
    init(){}
    
    func register(){
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password){
            [weak self] result,
            error in
            guard let userId = result?.user.uid else {
                return
            }
            
            //İNSERT METHODU
            
            self?.insertUserRecord(id: userId)
            
            
        }
    }
    
    private func insertUserRecord(id: String){
        let newUser = User(id: id, name: name, email: email, joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictonary())
        
    }
    
    
    
    
    
    
    private func validate() -> Bool {
        
        errorMessage = ""
        
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Lütfen Tüm Alanları Doldurunuz"
            return false
        }
        guard  email.contains("@") && email.contains(".") else {
            errorMessage = "Geçerli bir email adresi giriniz"
            return false
        }
        
        guard  password.count >= 6 else {
            errorMessage = " Lütfen 6 veya daha fazla karakterli şifre belirleyin"
            return false
        }
        return true
    }
}

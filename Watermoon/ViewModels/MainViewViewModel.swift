//
//  MainViewViewModel.swift
//  Watermoon
//
//  Created by serkan on 10.09.2024.
//
import FirebaseAuth
import Foundation

@Observable 
class MainViewViewModel {
    var currentUserID: String = ""
    
    init() {
        Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserID = user?.uid ?? ""
            }
        }
    }
    
    public var isSigned: Bool {
        return Auth.auth().currentUser != nil
    }
}

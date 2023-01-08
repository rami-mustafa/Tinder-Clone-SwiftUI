//
//  UserManager.swift
//  BuildTinderApp
//
//  Created by Ghaiath Alhereh on 03.01.23.
//

import Foundation

class UserManager: ObservableObject {
    
    @Published var currentUser: User = User(name: "" , age: 0 , jobTitle: "")
    @Published var matches: [Person] = []
    @Published var topPicks: [Person] = []
    
    
    init() {
        loadUser()
        loadMatches()
    }
    
    private func loadUser() {
        self.currentUser = User.exmple
       }
    
    private func loadMatches() {
        self.matches  = Person.examples
    }
    
    private func loadTopPicks() {
        self.topPicks =  Person.examples.shuffled()
    }
}
    


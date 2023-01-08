//
//  MessageListVM.swift
//  BuildTinderApp
//
//  Created by Ghaiath Alhereh on 01.01.23.
//

import Foundation

class MessageListVM: ObservableObject{
    @Published var messagePreviews: [MessagePreview] = []
    
    init(){
        loadPreviews()
    }
    
    func loadPreviews(){
//        handle networking to load messagePreviews from a server
        self.messagePreviews = MessagePreview.examples
    }
    
}

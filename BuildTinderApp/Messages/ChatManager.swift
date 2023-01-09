//
//  ChatManager.swift
//  BuildTinderApp
//
//  Created by Ghaiath Alhereh on 31.12.22.
//

import Foundation
import Combine
import UIKit
// mesaj göndermekle ilgilenecek
class ChatManager: ObservableObject{
    @Published var messages: [Message] = []
    @Published var keyboardIsShowing: Bool = false
    
    var canellable: AnyCancellable? = nil
    
    // her sohbet yönetici aslında bir konuşma içindir yani burada sadece bir kişi var ve bu kişi iletişim kurdugumuz kişidir
    private var person: Person
    
    init (person: Person){
        self.person = person
        loadMessage()
        setsupPublishers()
    }
    
    public func sendMessage(_ message: Message){
//        networking
        messages.append(message)
//        if networking failure , then show an error wtih some retry options
        
        
    }
    
    private let keyboarWillShow = NotificationCenter.default
        .publisher(for: UIResponder.keyboardWillShowNotification )
        .map({ _ in true})
    
    
    private let keyboarWillHide = NotificationCenter.default
        .publisher(for: UIResponder.keyboardWillHideNotification )
        .map({ _ in false})
    
    private func setsupPublishers(){
        canellable = Publishers.Merge(keyboarWillShow,keyboarWillHide)
            .subscribe(on: DispatchQueue.main)
            .assign(to: \.keyboardIsShowing, on: self)
    }
    
    
    private func loadMessage(){
        messages = [Message.exampleSent,Message.exampleReceived]
        
    }
    deinit{
        canellable?.cancel()
    }
    
}

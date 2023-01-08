//
//  MessageThread.swift
//  BuildTinderApp
//
//  Created by Ghaiath Alhereh on 30.12.22.
//

import Foundation
// mesajlaşma kısmı görüntü yeri

struct MessagePreview: Hashable {
    var person : Person
    var lastMessage : String
    
}

extension MessagePreview {
    static let example = MessagePreview(person: Person.example, lastMessage: "hello there.")
    
    static let examples: [MessagePreview] = [
        MessagePreview(person: Person.example, lastMessage: "hello rami ."),
        MessagePreview(person: Person.example2, lastMessage: "hi thsdadsadere.")    
    ]
}

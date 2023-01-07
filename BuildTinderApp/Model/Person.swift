//
//  Person.swift
//  BuildTinderApp
//
//  Created by Ghaiath Alhereh on 30.12.22.
//

import Foundation

struct Person: Hashable , Identifiable{
    let id = UUID().uuidString
    var name: String
    var imageURLS : [URL]
    var bio: String
    var age : Int
}

extension Person {
    static let example = Person(
        name: "Rami",
        imageURLS: [URL(string: "https://picsum.photos/200/300")!],
        bio:"this is my bio",
        age: 22
    )
    static let example2 = Person(
        name: "Ayşe",
        imageURLS: [URL(string: "https://picsum.photos/200/301")!],
        bio: "i really love dogs",
        age: 23
    )
    
    static let examples: [Person] = [
        Person(
            name: "ali",
            imageURLS: [URL(string: "https://picsum.photos/200/302")!],
            bio:"this is my bio",
            age: 26
        ),
        Person(
            name: "yusuf",
            imageURLS: [URL(string: "https://picsum.photos/200/304")!],
            bio:"this is my bio",
            age: 32
        ),
        Person(
            name: "fatih",
            imageURLS: [URL(string: "https://picsum.photos/200/303")!],
            bio:"this is my bio",
            age: 24
        ),
        Person(
            name: "ayşe",
            imageURLS: [URL(string: "https://picsum.photos/200/305")!],
            bio:"this is my bio",
            age: 24
        ),
        Person(
            name: "buse",
            imageURLS: [URL(string: "https://picsum.photos/200/306")!],
            bio:"this is my bio",
            age: 24
        ),
        Person(
            name: "fatma",
            imageURLS: [URL(string: "https://picsum.photos/200/307")!],
            bio:"this is my bio",
            age: 24
        )
    
    
    
    ]

}


import SwiftUI

struct Person: Hashable , Identifiable{
    let id = UUID().uuidString
    var name: String
    var imageURLS : [URL]
    var bio: String
    var age : Int
    var distance : Int
    var bioLong: String
    
//    used for card manipulation
    var x: CGFloat = 0.0
    var y: CGFloat = 0.0
    var degree: Double = 0.0

}

extension Person {
    static let example = Person(
        name: "Rami",
        imageURLS: [
            URL(string: "https://picsum.photos/200/300")!,
            URL(string: "https://picsum.photos/200/306")!,
            URL(string: "https://picsum.photos/200/305")!,
            URL(string: "https://picsum.photos/200/309")!,
            URL(string: "https://picsum.photos/200/305")!,

        ],
        bio:"Where I am declaring the individual cells I want to be shown for the first section when I only use [productName] in my sectionData then this compiles without any issues",
        age: 22,
        distance: 21,
        bioLong: "Where I am declaring the individual cells I want to be shown for the first section when I only use [productName] in my sectionData then this compiles without any issues"
    )
    static let example2 = Person(
        name: "Ayşe",
        imageURLS: [
            URL(string: "https://picsum.photos/200/301")!,
            URL(string: "https://picsum.photos/200/322")!,
            URL(string: "https://picsum.photos/200/321")!,
            URL(string: "https://picsum.photos/200/323")!,
            URL(string: "https://picsum.photos/200/324")!,
        ],
        bio: "i really love dogs",
        age: 23,
        distance: 32,
        bioLong: "Where I am declaring the individual cells I want to be shown for the first section when I only use [productName] in my sectionData then this compiles without any issues"
    )
    
    static let examples: [Person] = [
        Person(
            name: "ali",
            imageURLS: [
                URL(string: "https://picsum.photos/200/302")!,
                URL(string: "https://picsum.photos/200/325")!,
                URL(string: "https://picsum.photos/200/326")!,
                URL(string: "https://picsum.photos/200/327")!,
                URL(string: "https://picsum.photos/200/328")!,
            ],
            bio:"this is my bio",
            age: 26,
            distance: 33,
            bioLong: "Where I am declaring the individual cells I want to be shown for the first section when I only use [productName] in my sectionData then this compiles without any issues"
        ),
        Person(
            name: "yusuf",
            imageURLS: [
                URL(string: "https://picsum.photos/200/304")!,
                URL(string: "https://picsum.photos/200/329")!,
                URL(string: "https://picsum.photos/200/330")!,
                URL(string: "https://picsum.photos/200/331")!,
                URL(string: "https://picsum.photos/200/332")!,
            ],
            bio:"this is my bio",
            age: 32,
            distance: 19,
            bioLong: "Where I am declaring the individual cells I want to be shown for the first section when I only use [productName] in my sectionData then this compiles without any issues"
        ),
        Person(
            name: "fatih",
            imageURLS: [
                URL(string: "https://picsum.photos/200/303")!,
                URL(string: "https://picsum.photos/200/333")!,
                URL(string: "https://picsum.photos/200/334")!,
                URL(string: "https://picsum.photos/200/335")!,
                URL(string: "https://picsum.photos/200/336")!,
            ],
            bio:"this is my bio",
            age: 24,
            distance: 20,
            bioLong: "Where I am declaring the individual cells I want to be shown for the first section when I only use [productName] in my sectionData then this compiles without any issues"
        ),
        Person(
            name: "ayşe",
            imageURLS: [
                URL(string: "https://picsum.photos/200/305")!,
                URL(string: "https://picsum.photos/200/337")!,
                URL(string: "https://picsum.photos/200/338")!,
                URL(string: "https://picsum.photos/200/339")!,
                URL(string: "https://picsum.photos/200/340")!,
                       ],
            bio:"this is my bio",
            age: 24,
            distance: 29,
            bioLong: "Where I am declaring the individual cells I want to be shown for the first section when I only use [productName] in my sectionData then this compiles without any issues"
        ),
        Person(
            name: "buse",
            imageURLS: [
                URL(string: "https://picsum.photos/200/306")!,
                URL(string: "https://picsum.photos/200/341")!,
                URL(string: "https://picsum.photos/200/342")!,
            ],
            bio:"this is my bio",
            age: 24,
            distance: 26,
            bioLong: "Where I am declaring the individual cells I want to be shown for the first section  when I only use [productName] in my sectionData then this compiles without any issues"
        ),
        Person(
            name: "fatma",
            imageURLS: [
                URL(string: "https://picsum.photos/200/307")!,
                URL(string: "https://picsum.photos/200/343")!,
                URL(string: "https://picsum.photos/200/344")!,
                URL(string: "https://picsum.photos/200/345")!,
            ],
            bio:"this is my bio",
            age: 24,
            distance: 33,
            bioLong: "Where I am declaring the individual cells I want to be shown for the first section  when I only use [productName] in my sectionData then this compiles without any issues"
        )
    ]

}



import Foundation

struct User {
    var name: String
    var age: Int
    var jobTitle: String
    
    var goldSubsceiber: Bool = false
    var profileTip: String = ""
    
    var imageURLS : [URL] = []

}

extension User  {
    static let exmple = User(
        name: "Rami",
        age: 33,
        jobTitle:"Software Engineer",
        goldSubsceiber: false,
        profileTip: "fotoğraf ipucu :  güzel bir cafede çekilmiş bir fotoğraf  ",
        imageURLS : [URL(string: "https://picsum.photos/200/320")!]
     
    )

}

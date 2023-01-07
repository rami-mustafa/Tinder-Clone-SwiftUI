//
//  User.swift
//  BuildTinderApp
//
//  Created by Ghaiath Alhereh on 03.01.23.
//

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
        profileTip: "Photo Tip: Make waves with a beach photo and get more likes",
        imageURLS : [URL(string: "https://picsum.photos/200/320")!]
     
    )

}

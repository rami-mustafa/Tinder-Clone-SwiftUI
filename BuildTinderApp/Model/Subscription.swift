//
//  Subscription.swift
//  BuildTinderApp
//
//  Created by Ghaiath Alhereh on 07.01.23.
//

import Foundation

struct Subscription: Identifiable {
    let id = UUID( )
    
    
    var month: Int
    var mmonthlyCost: Double
    var totalCost: Double
    var savePercent: Int?
    var tagLine: TagLine = .none
    
    
    enum TagLine: String {
        case mostPopular = "MOST POPULAR"
        case bestValue =    " BEST VALUE"
        case none
        
    }
}

extension Subscription{
    static let example1 = Subscription(
        month: 6,
        mmonthlyCost: 15.00,
        totalCost: 89.99,
        savePercent: 50,
        tagLine: .bestValue
    )
    static let example2 = Subscription(
        month: 3,
        mmonthlyCost: 20.00,
        totalCost: 59.99,
        savePercent: 3,
        tagLine: .mostPopular
    )
    static let example3 = Subscription(
        month: 1,
        mmonthlyCost: 29.99,
        totalCost: 29.99
    )
    
}

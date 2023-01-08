//
//  PurchaseSwipePromo.swift
//  BuildTinderApp
//
//  Created by Ghaiath Alhereh on 07.01.23.
//

import SwiftUI

struct PurchaseSwipePromo: View {
    var body: some View {
        TabView {
            
            VStack ( spacing: 10) {
                Image(systemName: "thermometer.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 75)
                
                Text( "25 people already like you!")
                    .font(.system(size: 18 , weight: .semibold))
                Text( "Match with them instantly")
            }
            
            VStack ( spacing: 10) {
                Image(systemName: "thermometer.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 75)
                
                Text( "25 people already like you!")
                    .font(.system(size: 18 , weight: .semibold))
                Text( "Match with them instantly")
            }
            
            VStack ( spacing: 10) {
                Image(systemName: "thermometer.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 75)
                
                Text( "25 people already like you!")
                    .font(.system(size: 18 , weight: .semibold))
                Text( "Match with them instantly")
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct PurchaseSwipePromo_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseSwipePromo()
            .frame(height: UIScreen.main.bounds.height / 3)
    }
}

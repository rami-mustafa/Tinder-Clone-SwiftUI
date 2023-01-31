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
                
                Text( "25 kişi zaten seni beğeniyor!")
                    .font(.system(size: 18 , weight: .semibold))
                Text( "Onlarla anında eşleştirin")
            }
            
            VStack ( spacing: 10) {
                Image(systemName: "paperplane.circle.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 75)
                
                Text( "Eşleşmeden önce mesaj gönder!")
                    .font(.system(size: 18 , weight: .semibold))
                Text( "Gönderdiğin her super like'a ücretsiz bir mesaj ekle")
            }
            
            VStack ( spacing: 10) {
                Image(systemName: "calendar.badge.plus")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 75)
                
                Text( "Seni kimlerin beğendiğini gör")
                    .font(.system(size: 18 , weight: .semibold))
                Text( "seni beğenen kişilerle anında eşleş")
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

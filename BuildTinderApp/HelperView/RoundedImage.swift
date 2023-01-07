//
//  RoundedImage.swift
//  BuildTinderApp
//
//  Created by Ghaiath Alhereh on 15.12.22.
//

import SwiftUI
import Kingfisher


struct RoundedImage: View {
    var url: URL?
    
    var body: some View {
        KFImage(url)
//        ilk önce gelen resmin en büyük haline gelirmeye çalıştım , bunun         yapmamın nedeni fotoğraf ne kadar büyük olursa yine de istediğim         boyuta indirmek içindir
            .resizable()
//        burda ise istediğim büyüta indiriyorum yani fotoğraf ne kadar büyük olursa olsun her zaman istediğim boy oranını korur böylelikle büyük gözükmez
            .aspectRatio(contentMode: .fit)
//sonra olarakta daire şekli alması için clipShape kullanıyorum
            .clipShape(Circle())
    }
}

struct RoundedImage_Previews: PreviewProvider {
    static var previews: some View {
//        fotoğrafalrı bana 400x400 olacak gelmesi için bir site test için
        RoundedImage(url: URL(string :"https://picsum.photos/400"))
    }
}

//
//  LikeView.swift
//  BuildTinderApp
//
//  Created by Ghaiath Alhereh on 03.01.23.
//

import SwiftUI

struct LikeView: View {
    @EnvironmentObject var userMng: UserManager
    @EnvironmentObject var appState: AppStateManager
    
    private var user: User{
        return userMng.currentUser
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            
            if !user.goldSubsceiber {
                Text( "Seni beğenen kişileri görmek için Gold'a yükselt. ")
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .foregroundColor(.textTitle)
                    .font(.system(size: 16, weight: .medium))
                    .padding(.horizontal, 40)
                    .padding(.vertical, 24)
            }
            
            LazyVGrid(
                columns: [GridItem(.flexible()),GridItem(.flexible())],
                alignment: .center,
                spacing: nil,
                pinnedViews: [],
                content: {
//                    ne zaman bir alt görünümünüz varsa , foreack kullana bilirsin
                    ForEach(userMng.matches) { person in
                        PersonSquare(person: person, blur:
                                        !user.goldSubsceiber)
                                        .frame(height: 240)
                                        .onTapGesture(perform: {
                                            personTapped( person)
                                        })
                    }
             })
            .padding(.horizontal, 6)
        })
    }
    func personTapped(_ person: Person){
        if user.goldSubsceiber {
            appState.showPersonsProfile(person)
        } else {
            appState.showPurchaseScreen()
        }
    }
}

struct LikeView_Previews: PreviewProvider {
    static var previews: some View {
        LikeView()
            .environmentObject(UserManager())
            .environmentObject(AppStateManager())
    }
}

//
//  PurchasePopup.swift
//  BuildTinderApp
//
//  Created by Ghaiath Alhereh on 06.01.23.
//

import SwiftUI

struct PurchasePopup: View {
    @Binding var isVisible: Bool
    @State private var selectedkIndex: Int = 1
    
    let screen = UIScreen.main.bounds
    
    
    let subscriptions: [Subscription] = [
        Subscription.example1,
        Subscription.example2,
        Subscription.example3
        
    ]
    
    func processPayment() {
        
        
    }
    
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Spacer().frame(height: 40)
                VStack {
                    Text("Get Tİnder Gold")
                        .foregroundColor(.yellow)
                        .font(.system(size: 24, weight: .bold))
                    
                    PurchaseSwipePromo()
                        .frame(height: geo.size.height / 3)
//                        .background(Color.gray)
                        .padding(.top , -35)
                    
                    HStack {
                        ForEach(subscriptions.indices) { subIndex in
                            let sub = subscriptions[subIndex]
                            
                            PurchaseOptionView(sub: sub, isSelected: subIndex == selectedkIndex)
                                .onTapGesture(perform: {
                                    selectedkIndex = subIndex
                                })
                        }
                        
                    }
                    Spacer()
                    
                    Button(action: { processPayment() }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 45)
                                .foregroundColor(.yellow)
                            
                            Text("DEVAM ET")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .heavy))
                        }
                    })
                    .frame(height: 55)
                    .padding(.horizontal , 24)
                    .padding(.top, 12)
                    
                    Button(action: {isVisible = false }, label: {
                            Text( "HAYIR TEŞEKKÜRLER")
                            .foregroundColor(.textPrimary)
                            .font(.system(size: 20, weight: .heavy))
                    })
                    .padding(.vertical, 18)
    
                }
                .frame(width: geo.size.width)
                .padding(.vertical, 20)
                .background(
                    RoundedRectangle(cornerRadius: 25 , style: .continuous)
                    .foregroundColor(.white)
              )
                Spacer()
                
                VStack (spacing: 4){
                    
                    Text("Yinelenen faturalandırma, istediğiniz zaman iptal edin.")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("Bu, tüm abonelik sayfalarında bulunan yasal metni temsil eden bir dizi örnek metindir. Orijinal başvuruya saygı duyarak, yasal metinlerini burada kelimesi kelimesine kopyalamayacağız.")
                        .foregroundColor(Color.white.opacity(0.5))
                        .font(.system(size: 14, weight: .semibold))
                        .multilineTextAlignment(.center)
                }
                .padding(.bottom, 20)
                .padding(.horizontal, 4)
               
                Spacer()
           }
            .background(Color.black.edgesIgnoringSafeArea(.all))
        }
        .frame(height: screen.height)
    }
}

struct PurchasePopup_Previews: PreviewProvider {
    static var previews: some View {
        PurchasePopup(isVisible:  .constant(true))
    }
}

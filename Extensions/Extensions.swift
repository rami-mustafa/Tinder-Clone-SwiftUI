

import SwiftUI

extension View{
    @ViewBuilder
    func `if`<Transform :View>(
      _ condition :Bool,
        transform:(Self)-> Transform
    )-> some View {
        if condition {
            transform(self)
        } else {
          self
        }
    }
}
//uygulama içinde her yer de kullana bileceğim bir renk sınıfı uluşturuyorum
extension Color {
    static let textPrimary = Color.gray.opacity(0.9)
    static let textTitle = Color.black.opacity(0.8)
    static let defaulBackground =  Color(.systemGray6).opacity(0.35)
    static let textSecondary = Color.gray.opacity(0.6)
    static let textfieldBG = Color(.systemGray6)
}

extension View {
    func endEditing(_ force: Bool){
    UIApplication.shared.windows.forEach { $0.endEditing(force)}
    }
}

struct HideNavigationView: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .navigationTitle("")
            .navigationBarHidden(true)
    }
    
}

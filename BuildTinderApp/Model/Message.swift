

import Foundation

struct Message: Hashable {
   
    var content :String
    var person : Person? = nil // bunun anlamu eğer mesaji gönderşyorsam kişi tanımlamam gerek yok

    //    sadece bir eşit olup olmadığına gönderecek
    var fromCurrentuser : Bool {
        return person == nil
    }
    
    
}
extension Message {
    static let exampleSent = Message(content: "hello ww")
    static let exampleReceived = Message(content: "hellllll", person: Person.example)
    
    
}

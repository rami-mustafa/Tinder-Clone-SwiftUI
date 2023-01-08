//
//  Messageview.swift
//  BuildTinderApp
//
//  Created by Ghaiath Alhereh on 30.12.22.
//

import SwiftUI

struct MessageView: View {
    var  message: Message
    
    var body: some View {
        HStack{
            if message.fromCurrentuser {
                Spacer()
            }
            Text(message.content)
                .padding(10)
                .foregroundColor(.white)
                .background(message.fromCurrentuser ? Color.blue : Color.gray)
                .cornerRadius(10)
            
            if !message.fromCurrentuser {
                Spacer()
            }
        }
        
    }
}

struct Messageview_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: Message.exampleReceived)
    }
}

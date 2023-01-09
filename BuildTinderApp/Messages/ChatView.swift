//
//  ChatView.swift
//  BuildTinderApp
//
//  Created by Ghaiath Alhereh on 31.12.22.
//

import SwiftUI
import CoreMedia

struct ChatView: View {
    @ObservedObject var chatMng: ChatManager
    
    @State private var typingMessage: String = ""
    
    @State private var scrollProxy: ScrollViewProxy? = nil
    
    private var person: Person
    
    init(person: Person ){
        self.person = person
// ChatManager mesaj göndermekle ilgilenen sınıf
        self.chatMng = ChatManager(person: person)
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                Spacer().frame(height: 80)
                
                ScrollView(.vertical, showsIndicators: false, content: {
//                  proxy temel olarak kaydırma görünümünün şu anda nerede olduğunun değerlerini okumamıza izin verecek
                    ScrollViewReader { proxy in
                        
                        LazyVStack {
                            ForEach(chatMng.messages.indices, id: \.self ) {
                                index in
                                let msg = chatMng.messages[index]
                                  MessageView(message: msg)
                                    .id(index)
                            }
                        }
                        .onAppear(perform:  {
                            scrollProxy = proxy
                        })
                    }
                })
                
                ZStack (alignment: .trailing){
                    Color.textfieldBG
                    
                    TextField("teyp a message", text: $typingMessage)
                        .foregroundColor(Color.textPrimary)
                        .textFieldStyle(PlainTextFieldStyle())
                        .frame(height: 45)
                        .padding(.horizontal)
                    
                    Button(action: { sendMessage( )}, label: {
                        Text("Send")
                    })
                    .padding(.horizontal)
//                    bir şey yazarsan send buttonu mavi hiç bir şwy yazmazsan geri
                    .foregroundColor(typingMessage.isEmpty ? Color.textPrimary : Color.blue)
                }
                .frame(height: 40)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.bottom)
                
            }
            
            ChatViewHeader(
                name: person.name,
                imageURL: person.imageURLS.first) {
          }
       }
    
        .modifier(HideNavigationView())
        .onChange(of: chatMng.keyboardIsShowing, perform:  { Value in
            if Value {
                scrollToBottom()
            }
        })
        .onChange(of: chatMng.messages) { _ in
            scrollToBottom()
        }
    }
    
    func sendMessage(){
        chatMng.sendMessage(Message(content: typingMessage))
        typingMessage = ""
    }
    
    func scrollToBottom() {
        withAnimation{
            scrollProxy?.scrollTo(chatMng.messages.count - 1 , anchor: .bottom)
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(person: Person.example)
    }
}

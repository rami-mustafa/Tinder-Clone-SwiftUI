import SwiftUI

struct FullScreenCardView: View {
    var person : Person
    
    @Binding var fullscreenMode: Bool
    
    @State private var showingAlert = false
    
    let screen = UIScreen.main.bounds
    
    @EnvironmentObject var userMng: UserManager

    var nameSpace: Namespace.ID
    
    var body: some View {
        ZStack (alignment: .bottom) {
            Color.white
                .edgesIgnoringSafeArea(.all)
            

            ScrollView(showsIndicators: false) {
                VStack(spacing: 0 ) {
                    CardImageScroller(
                        person: person,
                        fullscreenMode: $fullscreenMode)
                    .frame(width: screen.width, height: screen.height * 0.6)
                    .matchedGeometryEffect(id: "image\(person.id)", in: nameSpace)

                    
                    HStack{
                        VStack (alignment: .leading){
                            HStack{
                                Text(person.name)
                                    .font(.system(size: 32 , weight: .heavy))
                         
                                Text(String(person.age))
                                    .font(.system(size: 28 , weight: .light ))
                                
                                Spacer()
                            }
                            .opacity(0.75)
                            
                            Text("\(person.distance) mil uzakta")
                                .font(.system(size: 18 , weight: .light ))
                                .opacity(0.75)
                        }
                        .padding([.horizontal , .top] , 16)
                        
                        Button(action: {fullscreenMode = false }, label: {
                            Image(systemName: "arrow.down.circle.fill")
                                .font(.system(size: 42))
                                .background(Color.white)
                                .clipShape(Circle())
                        })
                        .padding(.trailing, 16)
                        .offset(y: -40)
                    }
                    
                    Spacer().frame(height: 26)
                    
                    HStack{
                        Text(person.bio)
                            .font(.system(size: 18 , weight: .medium ))
                            .lineLimit(20)
                            .multilineTextAlignment(.leading)
                            .fixedSize(horizontal: false, vertical: true)
                            .opacity(0.75)
                            .padding(.horizontal, 16)
                        
                        Spacer()
                    }
                    Spacer().frame(height: 32)
                    
                    VStack(spacing: 24) {
                        Button(action: { showActionSheet()}, label: {
                            VStack{
                                Text("  \(person.name.uppercased())'adlı kişiyi paylaş")
                                    .font(.system(size: 16 , weight: .medium))
                                
                                Text("Arkadaşına fikrini sor")
                                    .font(.system(size: 14 , weight: .medium))
                            }
                            .opacity(0.9)
                        })
                        Button("\(person.name.uppercased()) adlı kişiyi bildir") {
                                   showingAlert = true
                               }
                               .alert("Emin misiniz ", isPresented: $showingAlert) {
                                   HStack{
                                   Button("Evet", role: .cancel) { }
                                   }
                               }
//                        Button(action: { }, label: {
//                            Text("\(person.name.uppercased()) adlı kişiyi bildir")
//                                .font(.system(size: 18 , weight: .medium))
//                                .foregroundColor(.black)
//                                .opacity(0.75)
//
//                        })
                    }
                    Spacer().frame(height: 200)
               }
            }
            
            HStack (spacing: 20 ){
                Spacer()
                CircleButtonView(type: .no) {
                    fullscreenMode = false
                    userMng.swipe(person, .nope)
                }
                .frame(height: 50)
                CircleButtonView(type: .star) {
                    fullscreenMode = false
                    userMng.superLike(person)
                }
                .frame(height: 45)

                CircleButtonView(type: .heart) {
                    fullscreenMode = false
                    userMng.swipe(person, .like)
                }
                .frame(height: 50)
                
                Spacer()

            }
            .padding(.top,25)
            .padding(.bottom, 45)
            .edgesIgnoringSafeArea(.bottom)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.white.opacity(0.2), Color.white]),
                    startPoint: .top,
                    endPoint: .bottom)
            )
        }
        .edgesIgnoringSafeArea(.bottom)
        .padding(.top ,40)
   }
    
    func showActionSheet() {
        let items: [Any] = ["What do you think about \(person.name)? \n"]
        let av = UIActivityViewController(activityItems: items, applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil )
    }
}

struct FullScreenCardView_Previews: PreviewProvider {
    @Namespace static var placeholder
    static var previews: some View {
        FullScreenCardView(
            person: Person.example,
            fullscreenMode: .constant(true),
            nameSpace: placeholder)
    }
}

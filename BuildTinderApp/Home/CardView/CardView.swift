 
import SwiftUI

struct CardView: View {
    
    @State var person: Person
    
    @Binding var fullscreenMode: Bool
    let screenCutoff = (UIScreen.main.bounds.width / 2) * 0.8

    @Namespace var imageNamespace
    var body: some View {
       
        GeometryReader { geo in
            if fullscreenMode {
                 FullScreenCardView(
                     person: person,
                     fullscreenMode: $fullscreenMode,
                     nameSpace: imageNamespace)
                      .animation(.easeOut(duration: 0.2), value: fullscreenMode)

            } else {
                CardImageScroller(person: person, fullscreenMode: $fullscreenMode)
                    .animation(.easeOut(duration: 0.2), value: fullscreenMode)
                    .frame(width: geo.size.width - 20 , height: geo.size.height)
                    .padding(.leading, 10)
                    .matchedGeometryEffect(id: "image\(person.id)", in: imageNamespace)
                    .offset(x: person.x , y: person.y)
                    .rotationEffect(.degrees(person.degree))
                    .gesture(
                         DragGesture()
                            .onChanged({ Value in
                                    withAnimation(.default) {
                                        person.x = Value.translation.width
                                        person.y = Value.translation.height
                                        withAnimation {
                                            person.degree = Double((Value.translation.width / 25) * -1 )
                                        }
                                    }
                            })
                            .onEnded({ value in
                                withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 10, initialVelocity: 0)) {
                                    let width = value.translation.width

                                    if width >= 0 && width <= screenCutoff {
                                        // Snap back to middle
                                        person.x = 0
                                        person.y = 0
                                        person.degree = 0
                                    }  else if width <= -1 && width >= -screenCutoff {
                                        // Snap back to middle
                                        person.x = 0
                                        person.y = 0
                                        person.degree = 0
                                    } else if width > screenCutoff {
                                        // Swipe right
                                        person.x = 500
                                        person.degree = 12
                                    } else if width < -screenCutoff {
                                        // Swipe left
                                        person.x = -500
                                        person.degree = -12
                                    }
                                }
                            })
                    )
            }
        }
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(person: Person.example, fullscreenMode: .constant(false))
        CardView(person: Person.example, fullscreenMode: .constant(true))
    }
}

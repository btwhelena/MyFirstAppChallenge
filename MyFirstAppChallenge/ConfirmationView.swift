import SwiftUI

struct ConfirmationView: View {
    var body: some View {
        VStack{
            Spacer()
            Text( "✅").font(.system(size: 60))
            Text("Order confirmed").font(.system(size: 24).bold()).frame(maxWidth: 200, alignment: .center).shadow(radius: 1.2, x: 0.5, y: 0.5).padding(.bottom,10)
            Text("Your order is on the way to you!")
                .padding(.top, 10)
                .padding(.bottom,30)
                .font(.system(size: 16))
                .frame(maxWidth: 300, alignment: .center)
                .shadow(radius: 1.2, x: 0.5, y: 0.5)
            
            NavigationLink(
                destination: {
                         ContentView()
                },
                label: {
                    VStack {
                        Text("Back to menu")
                            .font(.system(size: 20)).bold()
                            .foregroundColor(Color.black)
                            .padding(10)
                            .opacity(1.0)
                            .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color.black, lineWidth: 1.5)
                                            .shadow(color:Color.black.opacity(0.4),radius: 1, x: 0, y: 2)
                                            
                            )
                            
                    } //fim Vstack

                }
            )
            Spacer()
        }.background(
            LinearGradient(
                gradient:
                    Gradient(
                        colors: [
                            Color(red: 248/255, green: 240/255, blue: 229/255),
                            Color(red: 237/255, green: 224/255, blue: 212/255),
                            Color(red: 234/255, green: 214/255, blue: 195/255)
                        ]
                    ),
                startPoint: .top, endPoint: .bottom
            )
            .ignoresSafeArea(edges: [.top, .bottom])
            .aspectRatio(contentMode: .fill)
        )
    }
}

struct ConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationView()
    }
}

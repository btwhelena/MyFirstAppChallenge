import SwiftUI

struct ShrimpSushis: View {
    var body: some View {
            VStack(spacing:20){
                
                Text("Shrimp Sushis")
                    .font(.system(size: 24).bold()).frame(maxWidth: 320, alignment: .topLeading)
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Shrimp Nigiri", name: "Shrimp Nigiri", description: "Only gohan and shrimp. 4pcs.", quantity: 1, price: 10))
                }
                Spacer()
            }
            .background(
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

struct ShrimpSushis_Previews: PreviewProvider {
    static var previews: some View {
        ShrimpSushis()
    }
}

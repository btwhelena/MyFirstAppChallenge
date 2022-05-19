import SwiftUI

struct SalmonSushis: View {
    var body: some View {
            VStack(spacing:20){
                
                Text("Salmon Sushis")
                    .font(.system(size: 24).bold()).frame(maxWidth: 320, alignment: .topLeading)
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Salmon Roll", name: "Salmon Roll", description: "Nori, gohan and fresh salmon. 4pcs.", quantity: 1, price: 4))
                    CardView(sushi: Sushi(image: "Salmon and Genger Roll", name: "Salmon and Genger Roll", description: "Nori, gohan, genger and fresh salmon.  4pcs.", quantity: 1, price: 6))
                }
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Salmon Nigiri", name: "Salmon Nigiri", description: "Only gohan and fresh salmon. 4pcs.", quantity: 1, price: 8))
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

struct SalmonSushis_Previews: PreviewProvider {
    static var previews: some View {
        SalmonSushis()
    }
}

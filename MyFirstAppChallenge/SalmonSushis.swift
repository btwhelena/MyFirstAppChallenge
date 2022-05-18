import SwiftUI

struct SalmonSushis: View {
    var body: some View {
            VStack(spacing:20){
                
                Text("Salmon Sushis")
                    .font(.system(size: 24).bold()).frame(maxWidth: 320, alignment: .topLeading)
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Salmon Roll", name: "Salmon Roll", description: "Nori, gohan and fresh salmon. A classic and delicious combination. 4pcs.", quantity: 1, price: 4))
                    CardView(sushi: Sushi(image: "Salmon and Genger Roll", name: "Salmon and Genger Roll", description: "Nori, gohan, genger and fresh salmon. A classic and delicious combination. 4pcs.", quantity: 1, price: 6))
                }
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Salmon Nigiri", name: "Salmon Nigiri", description: "Only gohan and salmon. XXXXXXXXX 4pcs.", quantity: 1, price: 8))
                }
                Spacer()
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [.brown.opacity(0.15), .brown.opacity(0.2), .brown.opacity(0.3)]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
                    .aspectRatio(contentMode: .fill)
            )
    }
}

struct SalmonSushis_Previews: PreviewProvider {
    static var previews: some View {
        SalmonSushis()
    }
}

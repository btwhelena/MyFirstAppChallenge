import SwiftUI

struct SalmonSushis: View {
    var body: some View {
            VStack(spacing:20){
                
                Text("Salmon Sushis")
                    .font(.system(size: 24).bold()).frame(maxWidth: 320, alignment: .topLeading)
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Salmon Roll", name: "Salmon Roll", description: "Nori, gohan and fresh salmon. A classic and delicious combination.", quantity: 1, price: 2))
                    CardView(sushi: Sushi(image: "Salmon and Genger Roll", name: "Salmon and Genger Roll", description: "Nori, gohan and fresh salmon. A classic and delicious combination.", quantity: 1, price: 3))
                }
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Salmon Nigiri", name: "Salmon Nigiri", description: "Gohan and shrimp. XXXXXXXXX", quantity: 1, price: 2))
                }
                Spacer()
            }
    }
}

struct SalmonSushis_Previews: PreviewProvider {
    static var previews: some View {
        SalmonSushis()
    }
}

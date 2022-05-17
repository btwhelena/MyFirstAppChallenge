import SwiftUI

struct AllSushis: View {
    
    var body: some View {
        
        ScrollView{
            VStack(spacing:20){
                
                Text("All Sushis")
                    .font(.system(size: 24).bold()).frame(maxWidth: 320, alignment: .topLeading)
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Salmon Roll", name: "Salmon Roll", description: "Nori, gohan and fresh salmon. A classic and delicious combination. 4pcs.", quantity: 1, price: 4))
                    CardView(sushi: Sushi(image: "Tuna Nigiri", name: "Tuna Nigiri", description: "Only gohan and fresh tuna. XXXXXXXXX. 4pcs.", quantity: 1, price: 6))
                }
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Shrimp Nigiri", name: "Shrimp Nigiri", description: "Only gohan and shrimp. 4pcs.", quantity: 1, price: 10))
                    CardView(sushi: Sushi(image: "Tuna Roll", name: "Tuna Roll", description: "Nori, gohan and fresh tuna. A classic and delicious combination. 4pcs.", quantity: 1, price: 4))
                }
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Salmon and Genger Roll", name: "Salmon and Genger Roll", description: "Nori, gohan, genger and fresh salmon. A classic and delicious combination. 4pcs.", quantity: 1, price: 6))
                    CardView(sushi: Sushi(image: "Salmon Nigiri", name: "Salmon Nigiri", description: "Only gohan and fresh salmon. XXXXXXXXX. 4pcs.", quantity: 1, price: 8))
                }
            }
        }
    }
}

struct AllSushis_Previews: PreviewProvider {
    static var previews: some View {
        AllSushis()
    }
}

import SwiftUI

struct AllSushis: View {
    
    var body: some View {
        
        ScrollView{
            VStack(spacing:20){
                
                Text("All Sushis")
                    .font(.system(size: 24).bold()).frame(maxWidth: 320, alignment: .topLeading)
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Salmon Roll", name: "Salmon Roll", description: "Nori, gohan and fresh salmon. A classic and delicious combination.", price: 2))
                    CardView(sushi: Sushi(image: "Tuna Nigiri", name: "Tuna Nigiri", description: "Gohan and shrimp. XXXXXXXXX", price: 3))
                }
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Shrimp Nigiri", name: "Shrimp Nigiri", description: "Nori, gohan and fresh salmon. A classic and delicious combination.", price: 3))
                    CardView(sushi: Sushi(image: "Tuna Roll", name: "Tuna Roll", description: "Gohan and shrimp. XXXXXXXXX", price: 1))
                }
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Salmon and Genger Roll", name: "Salmon and Genger Roll", description: "Nori, gohan and fresh salmon. A classic and delicious combination.", price: 3))
                    CardView(sushi: Sushi(image: "Salmon Nigiri", name: "Salmon Nigiri", description: "Gohan and shrimp. XXXXXXXXX", price: 2))
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

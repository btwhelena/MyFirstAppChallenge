import SwiftUI

struct AllSushis: View {
    @EnvironmentObject var car: Cart2
    var body: some View {
        
        ScrollView{
            VStack(spacing:20){
                HStack{
                    Text("All Sushis")
                        .font(.system(size: 24).bold()).frame(maxWidth: 275, alignment: .topLeading)
                    
                    NavigationLink(
                        destination: {
                            CartView()
                        },
                        label: {
                            HStack {
                                Image(systemName: "cart")
                                    .font(.system(.title))
                                    .foregroundColor(Color.black)
                            }
                            .overlay(alignment: .bottomTrailing) {
                                Text("\(car.products.count)")
                                    .foregroundColor(.white)
                                    .background {
                                        Circle()
                                            .aspectRatio(1, contentMode: .fill)
                                            .foregroundColor(.black)
                                    }
                            }
                        }
                    )
                }
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Salmon Roll", name: "Salmon Roll", description: "Nori, gohan and fresh salmon. 4pcs.", quantity: 1, price: 4))
                    CardView(sushi: Sushi(image: "Tuna Nigiri", name: "Tuna Nigiri", description: "Only gohan and fresh tuna. 4pcs.", quantity: 1, price: 6))
                }
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Shrimp Nigiri", name: "Shrimp Nigiri", description: "Only gohan and shrimp. 4pcs.", quantity: 1, price: 10))
                    CardView(sushi: Sushi(image: "Tuna Roll", name: "Tuna Roll", description: "Nori, gohan and fresh tuna. 4pcs.", quantity: 1, price: 4))
                }
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Salmon and Genger Roll", name: "Salmon and Genger Roll", description: "Nori, gohan, genger and fresh salmon. 4pcs.", quantity: 1, price: 6))
                    CardView(sushi: Sushi(image: "Salmon Nigiri", name: "Salmon Nigiri", description: "Only gohan and fresh salmon. 4pcs.", quantity: 1, price: 8))
                }
            }
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

struct AllSushis_Previews: PreviewProvider {
    static var previews: some View {
        AllSushis()
            .environmentObject(Cart2())
    }
}

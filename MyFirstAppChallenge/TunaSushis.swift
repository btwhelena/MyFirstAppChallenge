import SwiftUI

struct TunaSushis: View {
    var body: some View {
            VStack(spacing:20){
                
                Text("Tuna Sushis")
                    .font(.system(size: 24).bold()).frame(maxWidth: 320, alignment: .topLeading)
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Tuna Roll", name: "Tuna Roll", description: "Gohan, nori and tuna. 4pcs.", quantity: 1, price: 4))
                    CardView(sushi: Sushi(image: "Tuna Nigiri", name: "Tuna Nigiri", description: "Only gohan and tuna. 4pcs.", quantity: 1, price: 6))
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
        
struct TunaSushis_Previews: PreviewProvider {
            static var previews: some View {
                TunaSushis()
            }
        }

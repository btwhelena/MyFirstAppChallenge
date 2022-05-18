import SwiftUI

struct TunaSushis: View {
    var body: some View {
            VStack(spacing:20){
                
                Text("Tuna Sushis")
                    .font(.system(size: 24).bold()).frame(maxWidth: 320, alignment: .topLeading)
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Tuna Roll", name: "Tuna Roll", description: "Gohan, nori and tuna. XXXXXXXXX. 4pcs.", quantity: 1, price: 4))
                    CardView(sushi: Sushi(image: "Tuna Nigiri", name: "Tuna Nigiri", description: "Only gohan and tuna. XXXXXXXXX. 4pcs.", quantity: 1, price: 6))
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
        
struct TunaSushis_Previews: PreviewProvider {
            static var previews: some View {
                TunaSushis()
            }
        }

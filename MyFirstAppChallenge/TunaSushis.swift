import SwiftUI

struct TunaSushis: View {
    var body: some View {
        
        NavigationView{
            VStack(spacing:20){
                
                Text("Tuna Sushis")
                    .font(.system(size: 24).bold()).frame(maxWidth: 320, alignment: .topLeading)
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Tuna Roll", name: "Tuna Roll", description: "Gohan and shrimp. XXXXXXXXX", price: 1))
                    CardView(sushi: Sushi(image: "Tuna Nigiri", name: "Tuna Nigiri", description: "Gohan and shrimp. XXXXXXXXX", price: 3))
                }
                Spacer()
            }
        }
    }
}
        
struct TunaSushis_Previews: PreviewProvider {
            static var previews: some View {
                TunaSushis()
            }
        }

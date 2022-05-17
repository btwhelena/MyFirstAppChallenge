import SwiftUI

struct ShrimpSushis: View {
    var body: some View {
            VStack(spacing:20){
                
                Text("Shrimp Sushis")
                    .font(.system(size: 24).bold()).frame(maxWidth: 320, alignment: .topLeading)
                
                HStack(spacing:10){
                    CardView(sushi: Sushi(image: "Shrimp Nigiri", name: "Shrimp Nigiri", description: "Nori, gohan and fresh salmon. A classic and delicious combination. 4pcs.", quantity: 1, price: 10))
                }
                Spacer()
            }
        
    }
}

struct ShrimpSushis_Previews: PreviewProvider {
    static var previews: some View {
        ShrimpSushis()
    }
}

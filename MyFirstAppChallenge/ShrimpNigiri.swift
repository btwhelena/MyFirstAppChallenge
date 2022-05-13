import SwiftUI


struct ShrimpNigiri: View {
    var body: some View {
        SushiView(sushi: Sushi(image: "Shrimp Nigiri", name: "Shrimp Nigiri", description: "Gohan and Shrimp.", price: 3))
    }
}

struct ShrimpNigiri_Previews: PreviewProvider {
    static var previews: some View {
        SalmonRoll()
    }
}

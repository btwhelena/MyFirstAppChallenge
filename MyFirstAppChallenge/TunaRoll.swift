import SwiftUI

struct TunaRoll: View {
    var body: some View {
        SushiView(sushi: Sushi(image: "Tuna Roll", name: "Tuna Roll", description: "Nori, gohan and fresh tuna. XXXXXXXXXXXXXXXXXXXX", price: 2))
    }
}

struct TunaRoll_Previews: PreviewProvider {
    static var previews: some View {
        TunaRoll()
    }
}

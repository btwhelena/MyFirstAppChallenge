import SwiftUI


struct SalmonRoll: View {
    var body: some View {
        SushiView(sushi: Sushi(image: "Salmon Roll", name: "Salmon Roll", description: "Nori, gohan and fresh salmon. A classic and delicious combination.", price: 2))
    }
}

struct Salmon_Previews: PreviewProvider {
    static var previews: some View {
        SalmonRoll()
    }
}

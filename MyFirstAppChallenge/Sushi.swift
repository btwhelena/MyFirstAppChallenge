import Foundation

struct Sushi: Identifiable {
    let image: String
    let name: String
    let description: String
    var quantity: Int
    let price: Int
    var id = UUID()
}

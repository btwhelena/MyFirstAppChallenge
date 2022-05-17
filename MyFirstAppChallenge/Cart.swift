import Foundation

struct Cart {
    
    var products: [Sushi] = []
    
    mutating func addToCart(product: Sushi) {
        products.append(product)
    }
}

class Cart2: ObservableObject {
    
    @Published var products: [Sushi] = []
    
}

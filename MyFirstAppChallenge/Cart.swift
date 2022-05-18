import Foundation

struct Cart {
    
    var products: [Sushi] = []
    
    mutating func addToCart(product: Sushi) {
        
        //checar se o item ja existe
        products.append(product)
    }
}

class Cart2: ObservableObject {
    
    @Published var products: [Sushi] = []
    
}

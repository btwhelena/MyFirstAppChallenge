import Foundation

class Cart{
    var products: [Sushi] = []
    var total: Int = 0
    
    func addToCart(product: Sushi) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Sushi) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
    
}

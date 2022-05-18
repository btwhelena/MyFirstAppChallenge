import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var car: Cart2
    
    var body: some View {
        
        VStack{

            Text("Your cart").font(.system(size: 24).bold()).frame(maxWidth: 275, alignment: .topLeading)
            List(car.products) { sushi in
                HStack {
                    Text(sushi.name)
                    Spacer()
                    Text("\(sushi.quantity)")
                }
                
            }
        } //fim vstack
        .background(
            LinearGradient(gradient: Gradient(colors: [.brown.opacity(0.15), .brown.opacity(0.2), .brown.opacity(0.3)]), startPoint: .top, endPoint: .bottom)
        .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
        )
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(Cart2())
    }
}

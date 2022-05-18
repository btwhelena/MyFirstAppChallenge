import SwiftUI

struct PaymentView: View {
    @State private var payment = 0
    @State private var address: String = ""
    
    var body: some View {

        VStack{
            Text("Select payment method:").font(.system(size: 24).bold())
                .frame(maxWidth: 275, alignment: .topLeading)
                .shadow(radius: 1.2, x: 0.5, y: 0.5)
                .padding(.trailing, 30)
            
            Picker("Select payment method:", selection: $payment) {
                            Text("Credit cart").tag(0)
                            Text("Debit cart").tag(1)
                            Text("Money").tag(2)
                        }
                        .pickerStyle(.segmented)
                        .frame(width: 300, height: 80, alignment: .center)
            
            Text("Delivery address:").font(.system(size: 24).bold())
                .frame(maxWidth: 275, alignment: .topLeading)
                .shadow(radius: 1.2, x: 0.5, y: 0.5)
                .padding(.trailing, 30)
            
            TextField(
                        "Example Street, 21.",
                        text: $address
                    )
                    .disableAutocorrection(true)
                    .frame(width: 300, height: 80, alignment: .center)
                
                .textFieldStyle(.roundedBorder)
            
            NavigationLink(
                destination: {
                    ConfirmationView()
                },
                label: {
                    VStack {
                        Text("Confirm order")
                            .font(.system(size: 20)).bold()
                            .foregroundColor(Color.black)
                            .padding(10)
                            .opacity(1.0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.black, lineWidth: 1.5)
                                    .shadow(color:Color.black.opacity(0.4),radius: 1, x: 0, y: 2)
                                
                            )
                        
                    }
                }
            )
        } .background(
            LinearGradient(gradient: Gradient(colors: [.brown.opacity(0.15), .brown.opacity(0.2), .brown.opacity(0.3)]), startPoint: .top, endPoint: .bottom)
        .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
    )
       
    }

struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
    }
}
}

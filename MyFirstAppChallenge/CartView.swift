import SwiftUI

struct CartView: View {
    @State private var payment = 0
    @State private var address: String = ""
    @EnvironmentObject var car: Cart2
    
    init(){
        UITableView.appearance().backgroundColor = .clear
    }
    
    func removeItem(at offsets: IndexSet) {
        car.products.remove(atOffsets: offsets)
    }
    
    var body: some View {
        
        if(car.products.isEmpty){
            VStack{
                Spacer()
                Text("Your cart is empty!").font(.system(size: 24).bold()).frame(maxWidth: 300, alignment: .center).shadow(radius: 1.2, x: 0.5, y: 0.5).padding(.bottom, 30)
                NavigationLink(
                    destination: {
                             AllSushis()
                    },
                    label: {
                        VStack {
                            Text("See all sushis")
                                .font(.system(size: 20)).bold()
                                .foregroundColor(Color.black)
                                .padding(10)
                                .opacity(1.0)
                                .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(Color.black, lineWidth: 1.5)
                                                .shadow(color:Color.black.opacity(0.4),radius: 1, x: 0, y: 2))
                        }
                    }
                    )
                Spacer()
            }.background(
                LinearGradient(
                    gradient:
                        Gradient(
                            colors: [
                                Color(red: 248/255, green: 240/255, blue: 229/255),
                                Color(red: 237/255, green: 224/255, blue: 212/255),
                                Color(red: 234/255, green: 214/255, blue: 195/255)
                            ]
                        ),
                    startPoint: .top, endPoint: .bottom
                )
                .ignoresSafeArea(edges: [.top, .bottom])
                .aspectRatio(contentMode: .fill)
            )
        }
        else{
            VStack{
                Text("Your cart").font(.system(size: 24).bold()).frame(maxWidth: 300, alignment: .topLeading).shadow(radius: 1.2, x: 0.5, y: 0.5)
                List {
                    ForEach(car.products) { sushi in
                        HStack{
                            Image(sushi.image)
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text(sushi.name)
                            Spacer()
                            Text("\(sushi.quantity)")
                            Spacer()
                            Text((sushi.quantity * sushi.price).formatted(.currency(code: "BRL"))).padding()
                            
                        }//fimhstack
                        .listRowBackground(
                            LinearGradient(gradient: Gradient(colors: [.brown.opacity(0.15), .brown.opacity(0.2), .brown.opacity(0.3)]), startPoint: .top, endPoint: .bottom))
                    }
                    .onDelete(perform: removeItem)
//                    .onDelete { product in
//                        car.products.remove(atOffsets: offsets )
//                    }
                }

                Text("Select payment method:").font(.system(size: 24).bold())
                    .frame(maxWidth: 275, alignment: .topLeading)
                    .shadow(radius: 1.2, x: 0.5, y: 0.5)
                    .padding(.trailing, 30)
                
                Picker("Select payment method:", selection: $payment) {
                    Text("Credit cart").tag(0)
                    Text("Debit cart").tag(1)
                    Text("Cash").tag(2)
                }
                .padding(.bottom, 20)
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
                            Text("Continue")
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
                ).padding(.bottom, 40)
                
            } //fim vstack
            .background(
                LinearGradient(
                    gradient:
                        Gradient(
                            colors: [
                                Color(red: 248/255, green: 240/255, blue: 229/255),
                                Color(red: 237/255, green: 224/255, blue: 212/255),
                                Color(red: 234/255, green: 214/255, blue: 195/255)
                            ]
                        ),
                    startPoint: .top, endPoint: .bottom
                )
                .ignoresSafeArea(edges: [.top, .bottom])
                .aspectRatio(contentMode: .fill)
            )
        }
        
    }
}


struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(Cart2())
    }
}


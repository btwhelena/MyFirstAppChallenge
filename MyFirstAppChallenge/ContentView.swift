import SwiftUI

struct ContentView: View {

    @State private var searchText = ""
    
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                HStack(spacing: 10){
                    Text("Welcome!").font(.system(size: 24).bold()).frame(maxWidth: 275, alignment: .topLeading)
                        
                    NavigationLink(
                        destination: {
                            Cart()
                        },
                        label: {
                            HStack {
                                Image(systemName: "cart")
                                    .font(.system(.title))
                                    .foregroundColor(Color.black)
                            }
                        }
                    )
                } // fim Hstack
                
             Text("Ingredients")
                    .font(.system(size: 24).bold()).frame(maxWidth: 320, alignment: .topLeading)
                
                HStack(spacing: 30){
                    
                    //Salmon button
                    NavigationLink(
                        destination: {
                                 SalmonSushis()
                        },
                        label: {
                            VStack {
                                Image("Salmon icon")
                                    .resizable(resizingMode: .stretch)
                                    .frame(width: 40, height: 40, alignment: .center)
                                    .font(.largeTitle)
                                    .foregroundColor(Color.white)
                                    .padding(10)
                                    .opacity(1.0)
                                    .overlay(
                                                RoundedRectangle(cornerRadius: 20)
                                                    .stroke(Color.black, lineWidth: 1.5)
                                            )
                                Text("Salmon")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.black)
                            } //fim Vstack
                        }
                    )
                    
                    //Shrimp button
                    NavigationLink(
                        destination: {
                                 ShrimpSushis()
                        },
                        label: {
                            VStack {
                                Image("Shrimp icon")
                                    .resizable(resizingMode: .stretch)
                                    .frame(width: 40, height: 40, alignment: .center)
                                    .font(.largeTitle)
                                    .foregroundColor(Color.white)
                                    .padding(10)
                                    .opacity(1.0)
                                    .overlay(
                                                RoundedRectangle(cornerRadius: 20)
                                                    .stroke(Color.black, lineWidth: 1.5)
                                            )
                                Text("Shrimp")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.black)
                            } //fim Vstack
                        }
                    )
                    
                    //Tuna button
                    NavigationLink(
                        destination: {
                                 TunaSushis()
                        },
                        label: {
                            VStack {
                                Image("Tuna icon")
                                    .resizable(resizingMode: .stretch)
                                    .frame(width: 40, height: 40, alignment: .center)
                                    .font(.largeTitle)
                                    .foregroundColor(Color.white)
                                    .padding(10)
                                    .opacity(1.0)
                                    .overlay(
                                                RoundedRectangle(cornerRadius: 20)
                                                    .stroke(Color.black, lineWidth: 1.5)
                                            )
                                Text("Tuna")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.black)
                            } //fim Vstack
                        }
                    )
                } // fim HStack.
                Text("Popular sushis")
                       .font(.system(size: 24).bold()).frame(maxWidth: 320, alignment: .topLeading)
                
                HStack{
                    CardView(sushi: Sushi(image: "Salmon Roll", name: "Salmon Roll", description: "Nori, gohan and fresh salmon. A classic and delicious combination.", price: 2))
                    CardView(sushi: Sushi(image: "Shrimp Nigiri", name: "Shrimp Nirigi", description: "Gohan and shrimp. XXXXXXXXX", price: 3))
                }
                
                NavigationLink(
                    destination: {
                             AllSushis()
                    },
                    label: {
                        VStack {
                            Text("See all")
                                .font(.system(size: 20)).bold()
                                .foregroundColor(Color.black)
                                .padding(10)
                                .opacity(1.0)
                                .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(Color.black, lineWidth: 1.5)
                                        )
                                
                        } //fim Vstack
                    }
                )
                Spacer()
                
            } // fim Vstack
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

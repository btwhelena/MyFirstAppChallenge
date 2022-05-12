import SwiftUI

struct ContentView: View {

    @State private var searchText = ""
    
    var body: some View {
        NavigationView{
            VStack(spacing: 50){
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
                                 Salmon()
                                .navigationBarBackButtonHidden(true)
                                .navigationBarHidden(true)
                        },
                        label: {
                            VStack {
                                Image("Salmon icon")
                                    .resizable(resizingMode: .stretch)
                                    .frame(width: 30, height: 30, alignment: .center)
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
                                 Shrimp()
                                .navigationBarBackButtonHidden(true)
                                .navigationBarHidden(true)
                        },
                        label: {
                            VStack {
                                Image("Shrimp icon")
                                    .resizable(resizingMode: .stretch)
                                    .frame(width: 30, height: 30, alignment: .center)
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
                                 Tuna()
                                .navigationBarBackButtonHidden(true)
                                .navigationBarHidden(true)
                        },
                        label: {
                            VStack {
                                Image("Tuna icon")
                                    .resizable(resizingMode: .stretch)
                                    .frame(width: 30, height: 30, alignment: .center)
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
                    CardView()
                    CardView()
                }
                
            } // fim Vstack
        }
    }
}
struct CardView: View{
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius)
                .strokeBorder(Color.gray, lineWidth: 1)
                .frame(width: cardAndImageWidth, height: cardHeight)
                .background(Color.white)
            VStack(alignment: .leading, spacing: 10) {
                Image("Salmon icon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: cardAndImageWidth, height: imageHeight)
                    .clipped()
                LazyVStack(alignment: .leading, spacing: 2) {
                    Text("Sushi name")
                        .font(.custom("Avenir", size: 14))
                        .fontWeight(.bold)
                    Text("R$XX,XX")
                        .font(.custom("Avenir", size: 12))
                        .foregroundColor(Color.gray)
                }
                .padding(.horizontal,12)
                .padding(.bottom,11)
            }
            .frame(width: cardAndImageWidth, height: cardHeight)
            .cornerRadius(cornerRadius)
        }
    }
    private let cardAndImageWidth: CGFloat = 170
    private let cardHeight: CGFloat = 174
    private let imageHeight: CGFloat = 116
    private let cornerRadius: CGFloat = 5
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

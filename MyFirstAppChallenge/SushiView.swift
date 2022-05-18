import SwiftUI

struct SushiView: View {
    
    @EnvironmentObject var car: Cart2
    
    @State var count = 1
    let sushi: Sushi
    
    var body: some View {
        VStack{
            HStack(spacing: 10){
                Text("Details").font(.system(size: 24).bold()).frame(maxWidth: 275, alignment: .topLeading)
                    
                NavigationLink(
                    destination: {
                        CartView()
                    },
                    label: {
                        HStack {
                            Image(systemName: "cart")
                                .font(.system(.title))
                                .foregroundColor(Color.black)
                        }
                        .overlay(alignment: .bottomTrailing) {
                            Text("\(car.products.count)")
                                .foregroundColor(.white)
                                .background {
                                    Circle()
                                        .aspectRatio(1, contentMode: .fill)
                                        .foregroundColor(.black)
                                }
                        }
                    }
                )
            } // fim Hstack
            Spacer()
            
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius)
                .strokeBorder(Color.gray, lineWidth: 1)
                .frame(width: cardAndImageWidth, height: cardHeight)
                .shadow(color:Color.black.opacity(0.4),radius: 1, x: 0, y: 2)
            VStack(alignment: .leading, spacing: 10) {
                
                Image(sushi.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: cardAndImageWidth, height: imageHeight)
                    .clipped()
                LazyVStack(alignment: .leading, spacing: 2) {
                    Text(sushi.name)
                        .font(.system(size: 26))
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                    
                    Text(sushi.description)
                        .font(.system(size: 20))
                        .foregroundColor(Color.gray)
                        .padding(.bottom)
                    
                    Text(sushi.price.formatted(.currency(code: "BRL")))
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    
                    HStack{
                        //minus
                        Button(action: {
                            
                            if count > 1{

                                count -= 1
                            }

                            
                        }) {
                            
                            Image(systemName: "minus")
                                .font(.system(size: 15))
                                .foregroundColor(Color.black)
                                .padding()
                                .background(Color.brown.opacity(0.2))
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                        }
                        
                        //number of items
                        Text("\(count)")
                            .font(.system(size: 20)).bold()
                        
                        //plus
                        Button(action: {
                            
                            count += 1
                            
                        }) {
                            
                            Image(systemName: "plus")
                                .font(.system(size: 15))
                                .foregroundColor(Color.black)
                                .padding()
                                .background(Color.brown.opacity(0.2))
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                        }
                        // add to cart...
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            let order = Sushi(image: sushi.image, name: sushi.name, description: sushi.description, quantity: count, price: sushi.price)
                            car.products.append(order)
                            
                        }) {
                            
                            Text("Add to cart")
                                .font(.system(size: 16)).bold()
                                .foregroundColor(Color.black)
                                .padding(10)
                                .opacity(1.0)
                                .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(Color.black, lineWidth: 1.5)
                                                .shadow(color:Color.black.opacity(0.4),radius: 6, x: 0, y: 2)
                                        )
                        }.padding(.trailing, 10)
                    }
                   
                }//fim Lazy Vstack
                .padding(.horizontal,12)
                .padding(.bottom,11)
            }
            .frame(width: cardAndImageWidth, height: cardHeight)
            .cornerRadius(cornerRadius)
            
        }//fim Zstack
            Spacer()
        }.background(
            LinearGradient(gradient: Gradient(colors: [.brown.opacity(0.15), .brown.opacity(0.2), .brown.opacity(0.3)]), startPoint: .top, endPoint: .bottom)
        .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
        )

    }
    private let cardAndImageWidth: CGFloat = 300
    private let cardHeight: CGFloat = 500
    private let imageHeight: CGFloat = 200
    private let cornerRadius: CGFloat = 5
}

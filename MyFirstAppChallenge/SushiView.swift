import SwiftUI

struct SushiView: View {
    @State var count = 1
    let sushi: Sushi
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius)
                .strokeBorder(Color.gray, lineWidth: 1)
                .frame(width: cardAndImageWidth, height: cardHeight)
                .background(Color.white)
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
                            //cart.addToCart(product: sushi)
                            
                            
                        }) {
                            
                            Image(systemName: "minus")
                                .font(.system(size: 15))
                                .foregroundColor(Color.red)
                                .padding()
                                .background(Color.white)
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
                                .foregroundColor(Color.red)
                                .padding()
                                .background(Color.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                        }
                        // add to cart...
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {}) {
                            
                            Text("Add to cart")
                                .font(.system(size: 16)).bold()
                                .foregroundColor(Color.black)
                                .padding(10)
                                .opacity(1.0)
                                .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(Color.black, lineWidth: 1.5)
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
    }
    private let cardAndImageWidth: CGFloat = 300
    private let cardHeight: CGFloat = 500
    private let imageHeight: CGFloat = 200
    private let cornerRadius: CGFloat = 5
}

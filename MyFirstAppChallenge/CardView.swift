import SwiftUI

struct CardView: View {
    let sushi: Sushi
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
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
                        .font(.system(size: 16))
                        .foregroundColor(Color.gray)
                        .padding(.bottom,5)
                    
                    Text(sushi.price.formatted(.currency(code: "BRL")))
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(.bottom,10)
                    
                    NavigationLink(
                        destination: {
                            SushiView(sushi: Sushi(image: sushi.image, name: sushi.name, description: sushi.description, quantity: sushi.quantity, price: sushi.price))

                        },
                        label: {
                            HStack{
                                Text("Details")
                                    .font(.system(size: 16)).bold()
                                    .foregroundColor(Color.black)
                                    .padding(10)
                                    .opacity(1.0)
                                    .overlay(
                                                RoundedRectangle(cornerRadius: 20)
                                                    .stroke(Color.black, lineWidth: 1.5)
                                            )
                            }
                        }
                    )
                   
                }//fim Lazy Vstack
                .padding(.horizontal,12)
                .padding(.bottom,11)
            }
            .frame(width: cardAndImageWidth, height: cardHeight)
            .cornerRadius(cornerRadius)
            
        }//fim Zstack
    }
    private let cardAndImageWidth: CGFloat = 170
    private let cardHeight: CGFloat = 300
    private let imageHeight: CGFloat = 150
    private let cornerRadius: CGFloat = 5
}

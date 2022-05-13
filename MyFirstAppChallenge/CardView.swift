import SwiftUI

struct CardView: View {
    
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
                        .font(.system(size: 16))
                        .foregroundColor(Color.gray)
                    
                    Text(sushi.price.formatted(.currency(code: "BRL")))
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    
                    NavigationLink(
                        destination: {
                            SushiView(sushi: Sushi(image: sushi.image, name: sushi.name, description: sushi.description, price: sushi.price))

                        },
                        label: {
                            HStack{
                                Text("Details")
                                    .font(.system(size: 16)).bold()
                                    .foregroundColor(Color.black)
                                    .padding(8)
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

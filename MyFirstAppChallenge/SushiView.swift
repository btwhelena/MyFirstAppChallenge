import SwiftUI

struct SushiView: View {

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

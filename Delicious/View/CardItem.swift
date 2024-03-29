import SwiftUI

struct CardItem : View {
    
    var item: Item
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            CardItemImage(imageData: item.image)
            VStack(alignment: .leading, spacing: 4) {
                Text(item.title)
                    .color(.primary)
                    .font(.headline)
                Text(item.restaurant + " · " + item.location)
                    .font(.subheadline)
                    .color(.secondary)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 30)
            }
        }
    }
}

struct CardItemImage: View {
    
    @State var imageData: String
    
    var body: some View {
        ZStack {
            if !self.imageData.elementsEqual("") {
                Image(self.imageData)
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 300, height: 169)
                    .cornerRadius(5)
                    .shadow(color: .gray, radius: 3, x: 0, y: 6)
            } else {
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 300, height: 169)
                    .cornerRadius(5)
                    .shadow(radius: 4)
            }
            }.onAppear {
                //self.imageData.downloadImage()
        }
    }
}

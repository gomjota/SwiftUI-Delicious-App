import SwiftUI

struct ItemCell : View {
    let item: Item
    
    var body: some View {
        NavigationButton(destination: ItemDetail()) {
            ItemCellImage(imageData: item.image)
            
            VStack(alignment: .leading) {
                Text(item.title)
                    .color(.primary)
                    .font(.headline)
                Text(item.restaurant + " · " + item.location)
                    .font(.subheadline)
                    .color(.secondary)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 20)
                
                HStack {
                    Image(systemName: "heart")
                        .foregroundColor(.red)
                    Text(String(item.likes))
                        .font(.subheadline)
                        .fontWeight(.light)
                        .foregroundColor(.secondary)
                }
            }
            .padding(.leading, 6)
        }
    }
}

struct ItemCellImage: View {
    
    @State var imageData: String
    
    var body: some View {
        ZStack {
            if !self.imageData.elementsEqual("") {
                Image(self.imageData)
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 90, height: 70)
                    .cornerRadius(5)
                    .shadow(color: .gray, radius: 3, x: 0, y: 6)
            } else {
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 120, height: 100)
                    .cornerRadius(5)
                    .shadow(radius: 4)
            }
            }.onAppear {
                //self.imageData.downloadImage()
        }
    }
}

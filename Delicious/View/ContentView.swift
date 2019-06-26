import SwiftUI

struct ContentView : View {
    
    var items: [Item] = []
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Rectangle()
                .fill(Color.red)
                .frame(height: 150)
                .background(Color.red)
                .cornerRadius(30)
                .edgesIgnoringSafeArea(.horizontal)
            
            Text("Trending")
                .font(.title)
                .padding(.leading)
            
            ScrollView(showsHorizontalIndicator: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.items) { item in
                        CardItem(item: item)
                            .frame(width: 300)
                            .padding(.trailing, 20)
                    }
                }
                .padding(.leading, 20)
            }
        }
        .padding(.top)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(items: testData)
    }
}
#endif

import SwiftUI

struct ContentView : View {
    
    var items: [Item] = []
    
    var body: some View {
        NavigationView {
            List {
                Text("Trending")
                    .font(.system(size: 22))
                ScrollView(showsHorizontalIndicator: false) {
                    VStack(alignment: .leading) {
                        HStack(spacing: 10) {
                            ForEach(self.items) { item in
                                CardItem(item: item)
                                    .frame(width: 300)
                                    .padding(.trailing)
                            }
                        }
                    }
                }
                .frame(height: 260)
                
                Text("Latest")
                    .font(.system(size: 22))
                
                ForEach(self.items) { item in
                    ItemCell(item: item)
                }
                .navigationBarTitle(Text("Delicious"))
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(items: testData)
    }
}
#endif

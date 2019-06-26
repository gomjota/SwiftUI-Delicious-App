import Foundation
import SwiftUI

struct Item : Codable, Identifiable {
    
    var id: Int
    var title: String
    var restaurant: String
    var likes: Int
    var category: String
    var location: String
    
    var image: String {
        return String(id)
    }
}

#if DEBUG
let testData = [
    Item(id: 1, title: "Hamburguesa Chipotle", restaurant: "Goiko Grill", likes: 1540, category: "Hamburguesas", location: "Madrid"),
    Item(id: 2, title: "Croqueta de txangurro", restaurant: "Bacira", likes: 1325, category: "Croquetas", location: "Madrid"),
    Item(id: 3, title: "Nachos", restaurant: "Taco Alto Born", likes: 1154, category: "Nachos", location: "Barcelona"),
    Item(id: 4, title: "Paella", restaurant: "Casa Salvador", likes: 1103, category: "Paellas", location: "Cullera")
]
#endif

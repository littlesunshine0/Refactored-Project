import Foundation

enum Category: Int, CaseIterable, Codable, Identifiable {
    case all
    case favorites
    case currentlyReading
    case wishlist
    
    var id: Self { self }
    
    var title: String {
        switch self {
        case .all:
            return "All Books"
        case .favorites:
            return "Favorites"
        case .currentlyReading:
            return "Currently Reading"
        case .wishlist:
            return "Wishlist"
        }
    }
    
    var iconName: String {
        switch self {
        case .all:
            return "books.vertical"
        case .favorites:
            return "heart"
        case .currentlyReading:
            return "book"
        case .wishlist:
            return "book.closed"
        }
    }
    
    static var mocks: [Category] {
        return Category.allCases
    }
}

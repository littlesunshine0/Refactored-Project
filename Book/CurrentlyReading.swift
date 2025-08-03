import SwiftUI

class CurrentlyReading: ObservableObject, Identifiable, Codable, Equatable {
    let id: UUID
    let book: Book
    var isFavorited: Bool
    var isWishlisted: Bool
    var hasProgress: Bool
    var progress: Double

    mutating func markProgress(_ value: Double) {
        progress = value
        hasProgress = value > 0
    }
}

extension Array where Element == CurrentlyReading {
    static var mocks: [CurrentlyReading] {
        return [
            CurrentlyReading(id: UUID(), book: Book.mock, isFavorited: true, isWishlisted: false, hasProgress: true, progress: 0.75),
            CurrentlyReading(id: UUID(), book: Book.mock, isFavorited: false, isWishlisted: true, hasProgress: false, progress: 0.0)
        ]
    }
}
extension CurrentlyReading {
    static var mock: CurrentlyReading {
        CurrentlyReading(
            id: UUID(),
            book: Book.mock,
            isFavorited: false,
            isWishlisted: false,
            hasProgress: false,
            progress: 0.0
        )
    }
}
public extension Book {
    static var mock: Book {
        Book(
            id: UUID(),
            title: "Mock Book",
            category: "Fiction",
            genre: "Adventure",
            imageName: nil,
            imageData: nil,
            createdDate: Date(),
            modifiedDate: Date(),
            author: "Mock Author",
            isFavorited: false,
            isWishlisted: false
        )
    }
}

/*
See LICENSE folder for this sample’s licensing information.

Abstract:
Favorite button to mark a currently reading book as favorited.
*/

import SwiftUI

struct FavoriteButton: View {
    var dataModel: ReadingListModel
    var bookId: Book.ID?
    
    var body: some View {
        Button {
            toggleIsFavorited()
        } label: {
            Label("Favorite", systemImage: "heart")
                .symbolVariant(isFavorited() ? .fill : .none)
        }
        .help("Favorite the book.")
        .disabled(bookId == nil || isWishlisted())
    }
    
    func toggleIsFavorited() {
        guard let bookId = bookId, let book = dataModel[book: bookId]
        else { return }
        book.isFavorited.toggle()
    }
    
    func isFavorited() -> Bool {
        guard let bookId = bookId, let book = dataModel[book: bookId]
        else { return false }
        return book.isFavorited
    }
    
    func isWishlisted() -> Bool {
        guard let bookId = bookId, let book = dataModel[book: bookId]
        else { return false }
        return book.isWishlisted
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        let favoritedBook = Book(
            id: UUID(),
            title: "Favorited",
            type: "Book",
            category: "Recommended",
            genre: "Fiction",
            imageName: nil,
            imageData: nil,
            createdDate: Date(),
            modifiedDate: Date(),
            author: "Author A",
            isFavorited: true,
            isWishlisted: false
        )

        let wishlistedBook = Book(
            id: UUID(),
            title: "Wishlisted",
            type: "Book",
            category: "Wishlist",
            genre: "Fiction",
            imageName: nil,
            imageData: nil,
            createdDate: Date(),
            modifiedDate: Date(),
            author: "Author B",
            isFavorited: false,
            isWishlisted: true
        )

        let dataModel = ReadingListModel()
        dataModel.add(book: favoritedBook)
        dataModel.add(book: wishlistedBook)

        return Group {
            FavoriteButton(dataModel: dataModel, bookId: nil)
            FavoriteButton(dataModel: dataModel, bookId: favoritedBook.id)
            FavoriteButton(dataModel: dataModel, bookId: wishlistedBook.id)
        }
    }
}

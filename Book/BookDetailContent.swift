import SwiftUI

struct BookDetailContent: View {
    var dataModel: ReadingListModel
    @ObservedObject var book: CurrentlyReading
    #if os(iOS)
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    #endif
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                BookDetailHeader(dataModel: dataModel, book: book)
                Divider()
                BookDetailReadingHistory(progress: book.progress)
            }
            .scenePadding(scenePadding)
        }
        .frame(minWidth: 350, minHeight: 350)
        .background(.background)
    }
    
    var scenePadding: Edge.Set {
        #if os(macOS)
        .all
        #else
        isCompactVerticalSizeClass ? .all : [.horizontal, .bottom]
        #endif
    }
    
    var isCompactVerticalSizeClass: Bool {
        #if os(iOS)
        return verticalSizeClass == .compact
        #else
        return false
        #endif
    }
}

struct BookDetailContent_Previews: PreviewProvider {
    static var previews: some View {
        let dataModel = ReadingListModel()
        return Group {
            BookDetailContent(dataModel: dataModel, book: .mock)
            BookDetailContent(dataModel: dataModel, book: .mock)
                .environment(\.locale, .italian)
        }
    }
}


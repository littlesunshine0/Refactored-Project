//
//  ReadingActivity.swift
//  Refactored Poject
//
//  Created by garyrobertellis on 8/2/25.
//


import Combine

#if os(macOS)
class ReadingActivity: ObservableObject {
    let items: [CurrentlyReading]
    
    init(_ items: [CurrentlyReading]) {
        self.items = items
    }
    
    var entries: AnyPublisher<[ReadingActivityItem], Never> {
        items.publisher.flatMap { item in
            item.progress.entries.publisher.map { entry in
                ReadingActivityItem(book: item.book, entry: entry)
            }
        }
        .collect()
        .eraseToAnyPublisher()
    }
}
#endif

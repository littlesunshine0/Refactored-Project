//
//  ReadingProgress.swift
//  Refactored Poject
//
//  Created by garyrobertellis on 8/2/25.
//



struct ReadingProgress {
    var entries: [Entry]

    struct Entry: Identifiable, Comparable {
        let id = UUID()
        let date: Date
        let progress: Double
        let note: String?

        static func < (lhs: Entry, rhs: Entry) -> Bool {
            lhs.date < rhs.date
        }
    }
}

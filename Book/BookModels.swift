import Foundation
import SwiftUI
import Combine

struct ProgressSection {
    let date: Date
    let entries: [ReadingProgress.Entry]
}

extension ProgressSection: Equatable {
    static func == (lhs: ProgressSection, rhs: ProgressSection) -> Bool {
        lhs.date == rhs.date && lhs.entries == rhs.entries
    }
}

extension ProgressSection: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(date)
        hasher.combine(entries)
    }
}

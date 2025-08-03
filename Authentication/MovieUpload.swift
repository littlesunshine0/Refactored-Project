import Foundation
import SwiftUI

// MARK: - Upload Model
struct MovieUpload: Identifiable, Codable, Equatable {
    var id = UUID()
    var title: String
    var director: String
    var fileURL: URL
}

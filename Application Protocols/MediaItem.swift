import Foundation
import SwiftUI

#if canImport(UIKit)
import UIKit            // iOS, tvOS, visionOS
#elseif canImport(AppKit)
import AppKit           // macOS
#elseif canImport(WatchKit)
import WatchKit         // watchOS
#endif
// MARK: - MediaItem Protocol
public protocol MediaItem: Identifiable, Codable, Hashable {
    var id: UUID { get }
    var title: String { get }
    
    var type: String { get }// e.g., "Show", "Book", "Note"
    var category: String { get }// e.g., "Educational", "Entertainment"
    var genre: String { get }// e.g., "Sci-Fi", "Philosophy"
    
    var imageName: String? { get }// For named assets
    var imageData: Data? { get }// For raw image bytes (offline/local)
    
    var createdDate: Date { get }
    var modifiedDate: Date { get }
}

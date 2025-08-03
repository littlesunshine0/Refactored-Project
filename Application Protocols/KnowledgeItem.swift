import Foundation
import SwiftUI

#if canImport(UIKit)
import UIKit            // iOS, tvOS, visionOS
#elseif canImport(AppKit)
import AppKit           // macOS
#elseif canImport(WatchKit)
import WatchKit         // watchOS
#endif
// MARK: - Protocols
protocol KnowledgeItem {
    var knowledgeLevel: String { get }
}

protocol Consumable {}
protocol Producible {}

protocol EditableContent {
    func editField(_ field: String, value: String)
    func addSection(_ title: String)
    func removeSection(_ title: String)
    func addSubsection(to section: String, title: String)
    func removeSubsection(from section: String, title: String)
}

protocol MediaLifecycle {
    func create()
    func update()
    func delete()
    func upload()
    func download()
    func importData()
    func exportData()
}




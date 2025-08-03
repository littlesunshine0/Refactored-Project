//
//  models.swift
//  Refactored Poject
//
//  Created by garyrobertellis on 8/2/25.
//


import Foundation

// MARK: - Media Models

public struct Song: MediaItem {
    public let id: UUID
    public var title: String
    public var type: String = "Song"
    public var category: String
    public var genre: String
    public var imageName: String?
    public var imageData: Data?
    public var createdDate: Date
    public var modifiedDate: Date
}

public struct Movie: MediaItem {
    public let id: UUID
    public var title: String
    public var type: String = "Movie"
    public var category: String
    public var genre: String
    public var imageName: String?
    public var imageData: Data?
    public var createdDate: Date
    public var modifiedDate: Date
}

public struct Show: MediaItem {
    public let id: UUID
    public var title: String
    public var type: String = "Show"
    public var category: String
    public var genre: String
    public var imageName: String?
    public var imageData: Data?
    public var createdDate: Date
    public var modifiedDate: Date
}

public struct Book: MediaItem {
    public let id: UUID
    public var title: String
    public var type: String = "Book"
    public var category: String
    public var genre: String
    public var imageName: String?
    public var imageData: Data?
    public var createdDate: Date
    public var modifiedDate: Date
    
    public var author: String
    public var isFavorited: Bool
    public var isWishlisted: Bool

}

public struct Application: MediaItem {
    public let id: UUID
    public var title: String
    public var type: String = "Application"
    public var category: String
    public var genre: String
    public var imageName: String?
    public var imageData: Data?
    public var createdDate: Date
    public var modifiedDate: Date
}

public struct Event: MediaItem {
    public let id: UUID
    public var title: String
    public var type: String = "Event"
    public var category: String
    public var genre: String
    public var imageName: String?
    public var imageData: Data?
    public var createdDate: Date
    public var modifiedDate: Date
}

public struct Note: MediaItem {
    public let id: UUID
    public var title: String
    public var type: String = "Note"
    public var category: String
    public var genre: String
    public var imageName: String?
    public var imageData: Data?
    public var createdDate: Date
    public var modifiedDate: Date
}

public struct Reminder: MediaItem {
    public let id: UUID
    public var title: String
    public var type: String = "Reminder"
    public var category: String
    public var genre: String
    public var imageName: String?
    public var imageData: Data?
    public var createdDate: Date
    public var modifiedDate: Date
}

public struct Todo: MediaItem {
    public let id: UUID
    public var title: String
    public var type: String = "Todo"
    public var category: String
    public var genre: String
    public var imageName: String?
    public var imageData: Data?
    public var createdDate: Date
    public var modifiedDate: Date
}

public struct Task: MediaItem {
    public let id: UUID
    public var title: String
    public var type: String = "Task"
    public var category: String
    public var genre: String
    public var imageName: String?
    public var imageData: Data?
    public var createdDate: Date
    public var modifiedDate: Date
}

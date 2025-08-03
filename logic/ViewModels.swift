//
//  ViewModels.swift
//  Refactored Poject
//
//  Created by garyrobertellis on 8/2/25.
//
/*/ MARK: - MediaItem Protocol
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
*/
import Foundation
import SwiftUI

// MARK: - SongViewModel
class SongViewModel: ObservableObject {
    @Published var id = UUID()
    @Published var title: String = ""
    @Published var type: String = "Song"
    @Published var category: String = ""
    @Published var genre: String = ""
    @Published var imageName: String? = nil
    @Published var imageData: Data? = nil
    @Published var createdDate: Date = Date()
    @Published var modifiedDate: Date = Date()

    func createSong() -> Song {
        Song(id: id, title: title, type: type, category: category, genre: genre, imageName: imageName, imageData: imageData, createdDate: createdDate, modifiedDate: modifiedDate)
    }
}

// MARK: - MovieViewModel
class MovieViewModel: ObservableObject {
    @Published var id = UUID()
    @Published var title: String = ""
    @Published var type: String = "Movie"
    @Published var category: String = ""
    @Published var genre: String = ""
    @Published var imageName: String? = nil
    @Published var imageData: Data? = nil
    @Published var createdDate: Date = Date()
    @Published var modifiedDate: Date = Date()

    func createMovie() -> Movie {
        Movie(id: id, title: title, type: type, category: category, genre: genre, imageName: imageName, imageData: imageData, createdDate: createdDate, modifiedDate: modifiedDate)
    }
}

// MARK: - ShowViewModel
class ShowViewModel: ObservableObject {
    @Published var id = UUID()
    @Published var title: String = ""
    @Published var type: String = "Show"
    @Published var category: String = ""
    @Published var genre: String = ""
    @Published var imageName: String? = nil
    @Published var imageData: Data? = nil
    @Published var createdDate: Date = Date()
    @Published var modifiedDate: Date = Date()

    func createShow() -> Show {
        Show(id: id, title: title, type: type, category: category, genre: genre, imageName: imageName, imageData: imageData, createdDate: createdDate, modifiedDate: modifiedDate)
    }
}

// MARK: - BookViewModel
class BookViewModel: ObservableObject {
    @Published var id = UUID()
    @Published var title: String = ""
    @Published var type: String = "Book"
    @Published var category: String = ""
    @Published var genre: String = ""
    @Published var imageName: String? = nil
    @Published var imageData: Data? = nil
    @Published var createdDate: Date = Date()
    @Published var modifiedDate: Date = Date()

    func createBook() -> Book {
        Book(id: id, title: title, type: type, category: category, genre: genre, imageName: imageName, imageData: imageData, createdDate: createdDate, modifiedDate: modifiedDate)
    }
}

// MARK: - ApplicationViewModel
class ApplicationViewModel: ObservableObject {
    @Published var id = UUID()
    @Published var title: String = ""
    @Published var type: String = "Application"
    @Published var category: String = ""
    @Published var genre: String = ""
    @Published var imageName: String? = nil
    @Published var imageData: Data? = nil
    @Published var createdDate: Date = Date()
    @Published var modifiedDate: Date = Date()

    func createApplication() -> Application {
        Application(id: id, title: title, type: type, category: category, genre: genre, imageName: imageName, imageData: imageData, createdDate: createdDate, modifiedDate: modifiedDate)
    }
}

// MARK: - EventViewModel
class EventViewModel: ObservableObject {
    @Published var id = UUID()
    @Published var title: String = ""
    @Published var type: String = "Event"
    @Published var category: String = ""
    @Published var genre: String = ""
    @Published var imageName: String? = nil
    @Published var imageData: Data? = nil
    @Published var createdDate: Date = Date()
    @Published var modifiedDate: Date = Date()

    func createEvent() -> Event {
        Event(id: id, title: title, type: type, category: category, genre: genre, imageName: imageName, imageData: imageData, createdDate: createdDate, modifiedDate: modifiedDate)
    }
}

// MARK: - NoteViewModel
class NoteViewModel: ObservableObject {
    @Published var id = UUID()
    @Published var title: String = ""
    @Published var type: String = "Note"
    @Published var category: String = ""
    @Published var genre: String = ""
    @Published var imageName: String? = nil
    @Published var imageData: Data? = nil
    @Published var createdDate: Date = Date()
    @Published var modifiedDate: Date = Date()

    func createNote() -> Note {
        Note(id: id, title: title, type: type, category: category, genre: genre, imageName: imageName, imageData: imageData, createdDate: createdDate, modifiedDate: modifiedDate)
    }
}

// MARK: - ReminderViewModel
class ReminderViewModel: ObservableObject {
    @Published var id = UUID()
    @Published var title: String = ""
    @Published var type: String = "Reminder"
    @Published var category: String = ""
    @Published var genre: String = ""
    @Published var imageName: String? = nil
    @Published var imageData: Data? = nil
    @Published var createdDate: Date = Date()
    @Published var modifiedDate: Date = Date()

    func createReminder() -> Reminder {
        Reminder(id: id, title: title, type: type, category: category, genre: genre, imageName: imageName, imageData: imageData, createdDate: createdDate, modifiedDate: modifiedDate)
    }
}

// MARK: - TodoViewModel
class TodoViewModel: ObservableObject {
    @Published var id = UUID()
    @Published var title: String = ""
    @Published var type: String = "Todo"
    @Published var category: String = ""
    @Published var genre: String = ""
    @Published var imageName: String? = nil
    @Published var imageData: Data? = nil
    @Published var isCompleted: Bool = false
    @Published var createdDate: Date = Date()
    @Published var modifiedDate: Date = Date()

    func createTodo() -> Todo {
        Todo(id: id, title: title, type: type, category: category, genre: genre, imageName: imageName, imageData: imageData, //isCompleted: isCompleted,
             createdDate: createdDate, modifiedDate: modifiedDate)
    }
}

// MARK: - TaskViewModel
class TaskViewModel: ObservableObject {
    @Published var id = UUID()
    @Published var title: String = ""
    @Published var type: String = "Task"
    @Published var category: String = ""
    @Published var genre: String = ""
    @Published var imageName: String? = nil
    @Published var imageData: Data? = nil
    @Published var createdDate: Date = Date()
    @Published var modifiedDate: Date = Date()

    func createTask() -> Task {
        Task(id: id, title: title, type: type, category: category, genre: genre, imageName: imageName, imageData: imageData, createdDate: createdDate, modifiedDate: modifiedDate)
    }
}

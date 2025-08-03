import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var todayShows: [Show] = []
    @Published var upcomingShows: [Show] = []
    @Published var recommendedShows: [Show] = []
    @Published var movies: [Movie] = []

    private var movieHistory: [[Movie]] = []
    private var redoStack: [[Movie]] = []

    // MARK: - Shows
    func addShow(_ show: Show) {
        todayShows.append(show)
    }

    // MARK: - Movies
    func addMovie(_ movie: Movie) {
        recordHistory()
        movies.append(movie)
        redoStack.removeAll()
    }

    func updateMovie(_ updated: Movie) {
        guard let index = movies.firstIndex(where: { $0.id == updated.id }) else { return }
        recordHistory()
        movies[index] = updated
        redoStack.removeAll()
    }

    func deleteMovie(_ movie: Movie) {
        guard let index = movies.firstIndex(where: { $0.id == movie.id }) else { return }
        recordHistory()
        movies.remove(at: index)
        redoStack.removeAll()
    }

    func undoLastAction() {
        guard let previous = movieHistory.popLast() else { return }
        redoStack.append(movies)
        movies = previous
    }

    func redoLastAction() {
        guard let next = redoStack.popLast() else { return }
        movieHistory.append(movies)
        movies = next
    }

    private func recordHistory() {
        movieHistory.append(movies)
        if movieHistory.count > 20 {
            movieHistory.removeFirst()
        }
    }
}



import SwiftUI
// Assume MockData and MediaItem protocol are defined elsewhere and imported

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 32) {
                    MediaSectionView(title: "Songs", items: MockData.songs)
                    MediaSectionView(title: "Movies", items: MockData.movies)
                    MediaSectionView(title: "Shows", items: MockData.shows)
                    MediaSectionView(title: "Books", items: MockData.books)
                    MediaSectionView(
                        title: "Apps",
                        items: MockData.applications
                    )
                    MediaSectionView(title: "Events", items: MockData.events)
                    MediaSectionView(title: "Notes", items: MockData.notes)
                    MediaSectionView(title: "Reminders", items: MockData.reminders)
                    MediaSectionView(title: "Todos", items: MockData.todos)
                    MediaSectionView(title: "Tasks", items: MockData.tasks)
                }
                .padding()
            }
            .navigationTitle("Library")
        }
    }
}

struct MediaSectionView: View {
    let title: String
    let items: [any MediaItem]

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .padding(.horizontal)

            LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))], spacing: 16) {
                ForEach(items, id: \.id) { item in
                    NavigationLink(destination: Text("Details for \(item.title)")) {
                        VStack {
                            if let name = item.imageName {
                                Image(name)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 100)
                                    .cornerRadius(8)
                            } else {
                                Color.gray.frame(height: 100)
                                    .cornerRadius(8)
                            }
                            Text(item.title)
                                .font(.caption)
                                .lineLimit(1)
                        }
                        .frame(width: 120)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

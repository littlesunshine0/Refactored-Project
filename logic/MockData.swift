//
//  MockData.swift
//  Refactored Poject
//
//  Created by garyrobertellis on 8/2/25.
//

import Foundation


// MARK: - Mock Media Items

struct MockData {
    static let songs: [Song] = [
        Song(id: UUID(), title: "Ocean Echo", category: "Pop", genre: "Synthwave", imageName: "song_ocean", imageData: nil, createdDate: .now, modifiedDate: .now),
        Song(id: UUID(), title: "Sky Runner", category: "Rock", genre: "Alternative", imageName: "song_sky", imageData: nil, createdDate: .now, modifiedDate: .now),
        Song(id: UUID(), title: "Electric Heartbeat", category: "EDM", genre: "Trance", imageName: "song_heartbeat", imageData: nil, createdDate: .now, modifiedDate: .now),
        Song(id: UUID(), title: "Midnight Drive", category: "Pop", genre: "Synthpop", imageName: "song_midnight", imageData: nil, createdDate: .now, modifiedDate: .now),
        Song(id: UUID(), title: "Crimson Horizon", category: "Indie", genre: "Shoegaze", imageName: "song_crimson", imageData: nil, createdDate: .now, modifiedDate: .now),
        Song(id: UUID(), title: "Golden Hour", category: "Jazz", genre: "Smooth", imageName: "song_golden", imageData: nil, createdDate: .now, modifiedDate: .now),
        Song(id: UUID(), title: "Star Child", category: "Pop", genre: "Dream Pop", imageName: "song_star", imageData: nil, createdDate: .now, modifiedDate: .now),
        Song(id: UUID(), title: "Neon Pulse", category: "EDM", genre: "House", imageName: "song_neon", imageData: nil, createdDate: .now, modifiedDate: .now),
        Song(id: UUID(), title: "River Flows", category: "Classical", genre: "Piano", imageName: "song_river", imageData: nil, createdDate: .now, modifiedDate: .now),
        Song(id: UUID(), title: "Shadow Walk", category: "Hip-Hop", genre: "Lo-Fi", imageName: "song_shadow", imageData: nil, createdDate: .now, modifiedDate: .now)
    ]

    static let movies: [Movie] = [
        Movie(id: UUID(), title: "Neptune's Wake", category: "Sci-Fi", genre: "Adventure", imageName: "movie_neptune", imageData: nil, createdDate: .now, modifiedDate: .now),
        Movie(id: UUID(), title: "Last Ember", category: "Drama", genre: "Romance", imageName: "movie_ember", imageData: nil, createdDate: .now, modifiedDate: .now),
        Movie(id: UUID(), title: "Mirror Maze", category: "Thriller", genre: "Mystery", imageName: "movie_mirror", imageData: nil, createdDate: .now, modifiedDate: .now),
        Movie(id: UUID(), title: "Quantum Leap", category: "Action", genre: "Sci-Fi", imageName: "movie_quantum", imageData: nil, createdDate: .now, modifiedDate: .now),
        Movie(id: UUID(), title: "Silent Harbor", category: "Horror", genre: "Psychological", imageName: "movie_harbor", imageData: nil, createdDate: .now, modifiedDate: .now),
        Movie(id: UUID(), title: "Emerald City", category: "Fantasy", genre: "Adventure", imageName: "movie_emerald", imageData: nil, createdDate: .now, modifiedDate: .now),
        Movie(id: UUID(), title: "Gravity Shift", category: "Sci-Fi", genre: "Thriller", imageName: "movie_gravity", imageData: nil, createdDate: .now, modifiedDate: .now),
        Movie(id: UUID(), title: "Paper Moon", category: "Drama", genre: "Indie", imageName: "movie_paper", imageData: nil, createdDate: .now, modifiedDate: .now),
        Movie(id: UUID(), title: "Solaris Bound", category: "Adventure", genre: "Space", imageName: "movie_solaris", imageData: nil, createdDate: .now, modifiedDate: .now),
        Movie(id: UUID(), title: "Echoes Within", category: "Mystery", genre: "Suspense", imageName: "movie_echoes", imageData: nil, createdDate: .now, modifiedDate: .now)
    ]

    static let shows: [Show] = [
        Show(id: UUID(), title: "Starlight Avenue", category: "Comedy", genre: "Sitcom", imageName: "show_starlight", imageData: nil, createdDate: .now, modifiedDate: .now),
        Show(id: UUID(), title: "Fractured Lines", category: "Crime", genre: "Detective", imageName: "show_fractured", imageData: nil, createdDate: .now, modifiedDate: .now),
        Show(id: UUID(), title: "Timeless", category: "Sci-Fi", genre: "Time Travel", imageName: "show_timeless", imageData: nil, createdDate: .now, modifiedDate: .now),
        Show(id: UUID(), title: "Greenhouse", category: "Drama", genre: "Family", imageName: "show_greenhouse", imageData: nil, createdDate: .now, modifiedDate: .now),
        Show(id: UUID(), title: "Pulse Point", category: "Medical", genre: "Procedural", imageName: "show_pulse", imageData: nil, createdDate: .now, modifiedDate: .now),
        Show(id: UUID(), title: "Neon Nights", category: "Action", genre: "Thriller", imageName: "show_neon", imageData: nil, createdDate: .now, modifiedDate: .now),
        Show(id: UUID(), title: "Canvas", category: "Art", genre: "Documentary", imageName: "show_canvas", imageData: nil, createdDate: .now, modifiedDate: .now),
        Show(id: UUID(), title: "Wild Roots", category: "Nature", genre: "Exploration", imageName: "show_wild", imageData: nil, createdDate: .now, modifiedDate: .now),
        Show(id: UUID(), title: "Urban Pulse", category: "Reality", genre: "Lifestyle", imageName: "show_urban", imageData: nil, createdDate: .now, modifiedDate: .now),
        Show(id: UUID(), title: "Iron Will", category: "Sports", genre: "Competition", imageName: "show_iron", imageData: nil, createdDate: .now, modifiedDate: .now)
    ]

    static let books: [Book] = [
        Book(
            id: UUID(),
            title: "Beneath the Waves",
            category: "Adventure",
            genre: "Fantasy",
            imageName: "book_waves",
            imageData: nil,
            createdDate: .now,
            modifiedDate: .now,
            author: "Unknown",
            isFavorited: false,
            isWishlisted: false
        ),
        Book(
            id: UUID(),
            title: "Silent Pages",
            category: "Mystery",
            genre: "Thriller",
            imageName: "book_silent",
            imageData: nil,
            createdDate: .now,
            modifiedDate: .now,
            author: "Unknown",
            isFavorited: false,
            isWishlisted: false
        ),
        Book(
            id: UUID(),
            title: "Crimson Sun",
            category: "Drama",
            genre: "Historical",
            imageName: "book_crimson",
            imageData: nil,
            createdDate: .now,
            modifiedDate: .now,
            author: "Unknown",
            isFavorited: false,
            isWishlisted: false
        ),
        Book(
            id: UUID(),
            title: "The Forgotten Path",
            category: "Adventure",
            genre: "Quest",
            imageName: "book_path",
            imageData: nil,
            createdDate: .now,
            modifiedDate: .now,
            author: "Unknown",
            isFavorited: false,
            isWishlisted: false
        ),
        Book(
            id: UUID(),
            title: "Echoes of Time",
            category: "Sci-Fi",
            genre: "Time Travel",
            imageName: "book_echoes",
            imageData: nil,
            createdDate: .now,
            modifiedDate: .now,
            author: "Unknown",
            isFavorited: false,
            isWishlisted: false
        ),
        Book(
            id: UUID(),
            title: "Golden Fields",
            category: "Romance",
            genre: "Drama",
            imageName: "book_golden",
            imageData: nil,
            createdDate: .now,
            modifiedDate: .now,
            author: "Unknown",
            isFavorited: false,
            isWishlisted: false
        ),
        Book(
            id: UUID(),
            title: "Lunar Valley",
            category: "Fantasy",
            genre: "Epic",
            imageName: "book_lunar",
            imageData: nil,
            createdDate: .now,
            modifiedDate: .now,
            author: "Unknown",
            isFavorited: false,
            isWishlisted: false
        ),
        Book(
            id: UUID(),
            title: "Shadow's Edge",
            category: "Horror",
            genre: "Suspense",
            imageName: "book_shadow",
            imageData: nil,
            createdDate: .now,
            modifiedDate: .now,
            author: "Unknown",
            isFavorited: false,
            isWishlisted: false
        ),
        Book(
            id: UUID(),
            title: "Atlas of Dreams",
            category: "Nonfiction",
            genre: "Memoir",
            imageName: "book_atlas",
            imageData: nil,
            createdDate: .now,
            modifiedDate: .now,
            author: "Unknown",
            isFavorited: false,
            isWishlisted: false
        ),
        Book(
            id: UUID(),
            title: "Iron Quill",
            category: "Classic",
            genre: "Literature",
            imageName: "book_iron",
            imageData: nil,
            createdDate: .now,
            modifiedDate: .now,
            author: "Unknown",
            isFavorited: false,
            isWishlisted: false
        )
    ]

    static let applications: [Application] = [
        Application(id: UUID(), title: "FlashNote", category: "Notes", genre: "Productivity", imageName: "app_flashnote", imageData: nil, createdDate: .now, modifiedDate: .now),
        Application(id: UUID(), title: "SkyCalc", category: "Calculator", genre: "Education", imageName: "app_skycalc", imageData: nil, createdDate: .now, modifiedDate: .now),
        Application(id: UUID(), title: "PhotoNest", category: "Photography", genre: "Creativity", imageName: "app_photonest", imageData: nil, createdDate: .now, modifiedDate: .now),
        Application(id: UUID(), title: "TaskFlow", category: "Tasks", genre: "Organization", imageName: "app_taskflow", imageData: nil, createdDate: .now, modifiedDate: .now),
        Application(id: UUID(), title: "RecipeBox", category: "Cooking", genre: "Lifestyle", imageName: "app_recipebox", imageData: nil, createdDate: .now, modifiedDate: .now),
        Application(id: UUID(), title: "MindfulMe", category: "Wellness", genre: "Health", imageName: "app_mindfulme", imageData: nil, createdDate: .now, modifiedDate: .now),
        Application(id: UUID(), title: "FitTrack", category: "Fitness", genre: "Exercise", imageName: "app_fittrack", imageData: nil, createdDate: .now, modifiedDate: .now),
        Application(id: UUID(), title: "BudgetBee", category: "Finance", genre: "Budgeting", imageName: "app_budgetbee", imageData: nil, createdDate: .now, modifiedDate: .now),
        Application(id: UUID(), title: "TravelLog", category: "Travel", genre: "Journal", imageName: "app_travellog", imageData: nil, createdDate: .now, modifiedDate: .now),
        Application(id: UUID(), title: "HabitLoop", category: "Habits", genre: "Self-Improvement", imageName: "app_habitloop", imageData: nil, createdDate: .now, modifiedDate: .now)
    ]

    static let events: [Event] = [
        Event(id: UUID(), title: "Spring Gala", category: "Social", genre: "Celebration", imageName: "event_gala", imageData: nil, createdDate: .now, modifiedDate: .now),
        Event(id: UUID(), title: "Tech Expo", category: "Technology", genre: "Exhibition", imageName: "event_expo", imageData: nil, createdDate: .now, modifiedDate: .now),
        Event(id: UUID(), title: "Writers' Meetup", category: "Literature", genre: "Networking", imageName: "event_writers", imageData: nil, createdDate: .now, modifiedDate: .now),
        Event(id: UUID(), title: "Music Fest", category: "Entertainment", genre: "Concert", imageName: "event_music", imageData: nil, createdDate: .now, modifiedDate: .now),
        Event(id: UUID(), title: "Art Walk", category: "Art", genre: "Exhibition", imageName: "event_art", imageData: nil, createdDate: .now, modifiedDate: .now),
        Event(id: UUID(), title: "Startup Pitch", category: "Business", genre: "Competition", imageName: "event_startup", imageData: nil, createdDate: .now, modifiedDate: .now),
        Event(id: UUID(), title: "Science Fair", category: "Education", genre: "Showcase", imageName: "event_science", imageData: nil, createdDate: .now, modifiedDate: .now),
        Event(id: UUID(), title: "Film Premiere", category: "Cinema", genre: "Screening", imageName: "event_film", imageData: nil, createdDate: .now, modifiedDate: .now),
        Event(id: UUID(), title: "Charity Run", category: "Sports", genre: "Fundraiser", imageName: "event_charity", imageData: nil, createdDate: .now, modifiedDate: .now),
        Event(id: UUID(), title: "Harvest Fair", category: "Community", genre: "Festival", imageName: "event_harvest", imageData: nil, createdDate: .now, modifiedDate: .now)
    ]

    static let notes: [Note] = [
        Note(id: UUID(), title: "Project Ideas", category: "Work", genre: "Brainstorm", imageName: "note_ideas", imageData: nil, createdDate: .now, modifiedDate: .now),
        Note(id: UUID(), title: "Shopping List", category: "Personal", genre: "Checklist", imageName: "note_shopping", imageData: nil, createdDate: .now, modifiedDate: .now),
        Note(id: UUID(), title: "Meeting Notes", category: "Business", genre: "Minutes", imageName: "note_meeting", imageData: nil, createdDate: .now, modifiedDate: .now),
        Note(id: UUID(), title: "Travel Plans", category: "Travel", genre: "Planning", imageName: "note_travel", imageData: nil, createdDate: .now, modifiedDate: .now),
        Note(id: UUID(), title: "Recipe Ideas", category: "Cooking", genre: "Food", imageName: "note_recipe", imageData: nil, createdDate: .now, modifiedDate: .now),
        Note(id: UUID(), title: "Book Quotes", category: "Literature", genre: "Quotes", imageName: "note_quotes", imageData: nil, createdDate: .now, modifiedDate: .now),
        Note(id: UUID(), title: "Fitness Goals", category: "Health", genre: "Wellness", imageName: "note_fitness", imageData: nil, createdDate: .now, modifiedDate: .now),
        Note(id: UUID(), title: "Learning Log", category: "Education", genre: "Study", imageName: "note_learning", imageData: nil, createdDate: .now, modifiedDate: .now),
        Note(id: UUID(), title: "Garden Plans", category: "Hobby", genre: "Outdoors", imageName: "note_garden", imageData: nil, createdDate: .now, modifiedDate: .now),
        Note(id: UUID(), title: "Gift Ideas", category: "Holiday", genre: "Planning", imageName: "note_gift", imageData: nil, createdDate: .now, modifiedDate: .now)
    ]

    static let reminders: [Reminder] = [
        Reminder(id: UUID(), title: "Call Mom", category: "Family", genre: "Phone", imageName: "reminder_callmom", imageData: nil, createdDate: .now, modifiedDate: .now),
        Reminder(id: UUID(), title: "Pay Bills", category: "Finance", genre: "Deadline", imageName: "reminder_bills", imageData: nil, createdDate: .now, modifiedDate: .now),
        Reminder(id: UUID(), title: "Doctor Appointment", category: "Health", genre: "Medical", imageName: "reminder_doctor", imageData: nil, createdDate: .now, modifiedDate: .now),
        Reminder(id: UUID(), title: "Car Service", category: "Maintenance", genre: "Auto", imageName: "reminder_car", imageData: nil, createdDate: .now, modifiedDate: .now),
        Reminder(id: UUID(), title: "Renew License", category: "Legal", genre: "Renewal", imageName: "reminder_license", imageData: nil, createdDate: .now, modifiedDate: .now),
        Reminder(id: UUID(), title: "Feed Cat", category: "Pets", genre: "Care", imageName: "reminder_cat", imageData: nil, createdDate: .now, modifiedDate: .now),
        Reminder(id: UUID(), title: "Water Plants", category: "Home", genre: "Chore", imageName: "reminder_plants", imageData: nil, createdDate: .now, modifiedDate: .now),
        Reminder(id: UUID(), title: "Submit Report", category: "Work", genre: "Deadline", imageName: "reminder_report", imageData: nil, createdDate: .now, modifiedDate: .now),
        Reminder(id: UUID(), title: "Buy Groceries", category: "Shopping", genre: "Errand", imageName: "reminder_groceries", imageData: nil, createdDate: .now, modifiedDate: .now),
        Reminder(id: UUID(), title: "Birthday Party", category: "Events", genre: "Celebration", imageName: "reminder_birthday", imageData: nil, createdDate: .now, modifiedDate: .now)
    ]

    static let todos: [Todo] = [
        Todo(id: UUID(), title: "Clean Desk", category: "Home", genre: "Organization", imageName: "todo_clean", imageData: nil, createdDate: .now, modifiedDate: .now),
        Todo(id: UUID(), title: "Reply to Emails", category: "Work", genre: "Communication", imageName: "todo_emails", imageData: nil, createdDate: .now, modifiedDate: .now),
        Todo(id: UUID(), title: "Read Article", category: "Learning", genre: "Education", imageName: "todo_article", imageData: nil, createdDate: .now, modifiedDate: .now),
        Todo(id: UUID(), title: "Laundry", category: "Chores", genre: "Household", imageName: "todo_laundry", imageData: nil, createdDate: .now, modifiedDate: .now),
        Todo(id: UUID(), title: "Walk Dog", category: "Pets", genre: "Exercise", imageName: "todo_walkdog", imageData: nil, createdDate: .now, modifiedDate: .now),
        Todo(id: UUID(), title: "Update Resume", category: "Career", genre: "Professional", imageName: "todo_resume", imageData: nil, createdDate: .now, modifiedDate: .now),
        Todo(id: UUID(), title: "Fix Bike", category: "Maintenance", genre: "Repair", imageName: "todo_bike", imageData: nil, createdDate: .now, modifiedDate: .now),
        Todo(id: UUID(), title: "Call Bank", category: "Finance", genre: "Errand", imageName: "todo_bank", imageData: nil, createdDate: .now, modifiedDate: .now),
        Todo(id: UUID(), title: "Plan Trip", category: "Travel", genre: "Planning", imageName: "todo_trip", imageData: nil, createdDate: .now, modifiedDate: .now),
        Todo(id: UUID(), title: "Organize Photos", category: "Digital", genre: "Media", imageName: "todo_photos", imageData: nil, createdDate: .now, modifiedDate: .now)
    ]

    static let tasks: [Task] = [
        Task(id: UUID(), title: "Prepare Presentation", category: "Work", genre: "Project", imageName: "task_presentation", imageData: nil, createdDate: .now, modifiedDate: .now),
        Task(id: UUID(), title: "Update Website", category: "IT", genre: "Development", imageName: "task_website", imageData: nil, createdDate: .now, modifiedDate: .now),
        Task(id: UUID(), title: "Write Report", category: "Business", genre: "Documentation", imageName: "task_report", imageData: nil, createdDate: .now, modifiedDate: .now),
        Task(id: UUID(), title: "Review Budget", category: "Finance", genre: "Analysis", imageName: "task_budget", imageData: nil, createdDate: .now, modifiedDate: .now),
        Task(id: UUID(), title: "Design Poster", category: "Marketing", genre: "Creative", imageName: "task_poster", imageData: nil, createdDate: .now, modifiedDate: .now),
        Task(id: UUID(), title: "Conduct Survey", category: "Research", genre: "Data", imageName: "task_survey", imageData: nil, createdDate: .now, modifiedDate: .now),
        Task(id: UUID(), title: "Team Meeting", category: "Management", genre: "Coordination", imageName: "task_meeting", imageData: nil, createdDate: .now, modifiedDate: .now),
        Task(id: UUID(), title: "Test Features", category: "QA", genre: "Testing", imageName: "task_test", imageData: nil, createdDate: .now, modifiedDate: .now),
        Task(id: UUID(), title: "Organize Files", category: "Admin", genre: "Organization", imageName: "task_files", imageData: nil, createdDate: .now, modifiedDate: .now),
        Task(id: UUID(), title: "Client Call", category: "Sales", genre: "Communication", imageName: "task_client", imageData: nil, createdDate: .now, modifiedDate: .now)
    ]
}

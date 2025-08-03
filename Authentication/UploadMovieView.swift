import SwiftUI

struct UploadMovieView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var title = ""
    @State private var director = ""
    @State private var fileURL: URL?
    @State private var uploadStatus: String = ""
    var onUpload: (MovieUpload) -> Void

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Movie Info")) {
                    TextField("Title", text: $title)
                    TextField("Director", text: $director)
                }

                Section(header: Text("Select Movie File")) {
                    if let fileURL = fileURL {
                        Text(fileURL.lastPathComponent)
                            .lineLimit(1)
                    }
                    Button("Choose File") {
                        selectMovieFile()
                    }
                }

                if !uploadStatus.isEmpty {
                    Section {
                        Text(uploadStatus)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Upload Movie")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        presentationMode.wrappedValue.dismiss()
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Upload") {
                        guard let fileURL = fileURL else {
                            uploadStatus = "Please select a movie file."
                            return
                        }
                        let upload = MovieUpload(title: title, director: director, fileURL: fileURL)
                        onUpload(upload)
                        uploadStatus = "Uploading..."
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            uploadStatus = "Upload Complete"
                            presentationMode.wrappedValue.dismiss()
                        }
                    }
                    .disabled(title.isEmpty || director.isEmpty || fileURL == nil)
                }
            }
        }
    }

    func selectMovieFile() {
        #if os(macOS)
        let panel = NSOpenPanel()
        panel.allowedFileTypes = ["mov", "mp4", "m4v"]
        panel.canChooseDirectories = false
        if panel.runModal() == .OK {
            fileURL = panel.url
        }
        #else
        // iOS/tvOS/visionOS placeholder
        uploadStatus = "File selection not supported on this platform."
        #endif
    }
}


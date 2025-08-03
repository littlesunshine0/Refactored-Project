import SwiftUI



struct BookDetailReadingProgressRow: View {
    var entry: ReadingProgress.Entry
    
    var body: some View {
        HStack {
            CircularProgressView(value: entry.progress)
                .frame(width: 64, height: 64)
                .padding(.trailing, 8)
            if let note = entry.note {
                Text(note)
                Spacer()
            }
        }
        .padding(padding)
    }
    
    var padding: EdgeInsets {
        EdgeInsets(top: 4, leading: 12, bottom: 4, trailing: 12)
    }
}

struct BookDetailReadingProgressRow_Previews: PreviewProvider {
    static var previews: some View {
        let entry = ReadingProgress.Entry(date: Date(), progress: 0.75, note: "75% done")
        return BookDetailReadingProgressRow(entry: entry)
    }
}

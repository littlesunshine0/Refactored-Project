/*
 ====================MODEL========================
 struct Show: Identifiable, Codable {
     let id: UUID
     let title: String
     let details: String 
     var posterImageName: String?
     var imageData: Data?
     let category: ShowCategory

     enum Category {
         case today, upcoming, recommended
     }
 }
 ====================CATEGORY========================
 struct ShowCategory: Identifiable {
     var id: UUID = UUID()
     var name: String
     var description: String
     var imageData: Data?
     var posterImageName: String

     init(name: String, description: String, imageData: Data? = nil, posterImageName: String = "") {
         self.name = name
         self.description = description
         self.imageData = imageData
         self.posterImageName = posterImageName
     }

     @ViewBuilder
     public var posterImage: some View {
         if let imageData = imageData, let uiImage = UIImage(data: imageData) {
             Image(uiImage: uiImage).resizable()
         } else if let uiImage = UIImage(named: posterImageName) {
             Image(uiImage: uiImage).resizable()
         } else {
             Color.random
         }
     }
 }
 public extension Color {
     static var random: Color {
         return Color(
             red: .random(in: 0...1),
             green: .random(in: 0...1),
             blue: .random(in: 0...1)
         )
     }
 }

 */

import SwiftUI
import Foundation
import Combine
// A larger card for the "Today" section.
struct SpotlightCardView: View {
    let show: Show

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            if let imageData = show.imageData, let uiImage = UIImage(data: imageData) {
                Image(uiImage: uiImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 240)
                    .clipped()
            } else {
                Image(show.imageName ?? "placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 240)
                    .clipped()
            }

            Text(show.title)
                .font(.headline)
                .foregroundColor(.white)

         
        }
        .cornerRadius(12)
    }
}

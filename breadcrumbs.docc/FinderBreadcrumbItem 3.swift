import SwiftUI

struct AnimatedBreadcrumbItem: Identifiable {
    let id = UUID()
    let title: String
}

struct AnimatedBreadcrumbCarousel: View {
    let items: [AnimatedBreadcrumbItem]
    @Binding var selection: Int
    @Namespace private var animation

    var body: some View {
        VStack(spacing: 0) {
            // Page Title (moves up & morphs into pill)
            ZStack {
                ForEach(items.indices, id: \.self) { idx in
                    if idx == selection {
                        Text(items[idx].title)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .matchedGeometryEffect(id: "title-\(items[idx].id)", in: animation)
                            .transition(.asymmetric(
                                insertion: .opacity.combined(with: .move(edge: .top)),
                                removal: .opacity.combined(with: .move(edge: .top))
                            ))
                    }
                }
            }
            .frame(height: 60)
            .padding(.top, 50)
            .padding(.bottom, 12)

            // Breadcrumb Carousel
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(Array(items.enumerated()), id: \.1.id) { idx, item in
                        if idx == selection {
                            // The selected item becomes the title, so don't show here
                            Spacer().frame(width: 0, height: 0)
                        } else {
                            Button(action: {
                                withAnimation(.spring(response: 0.5, dampingFraction: 0.85)) {
                                    selection = idx
                                }
                            }) {
                                Text(item.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.accentColor)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 18)
                                    .background(
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color(.systemGray6))
                                    )
                                    .matchedGeometryEffect(id: "title-\(item.id)", in: animation)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
            }
            .background(Color(.systemBackground).opacity(0.8))
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 1)

            // Page Content Placeholder
            Spacer()
            Text("Content for \(items[selection].title)")
                .font(.title2)
                .padding()
            Spacer()
        }
        .background(Color(.systemGroupedBackground))
        .edgesIgnoringSafeArea(.all)
    }
}

struct GraduationSwapDemo: View {
    @State private var selection = 2

    let breadcrumbs = [
        AnimatedBreadcrumbItem(title: "Home"),
        AnimatedBreadcrumbItem(title: "Shop"),
        AnimatedBreadcrumbItem(title: "Electronics"),
        AnimatedBreadcrumbItem(title: "Laptops"),
        AnimatedBreadcrumbItem(title: "Accessories"),
        AnimatedBreadcrumbItem(title: "Checkout"),
    ]

    var body: some View {
        AnimatedBreadcrumbCarousel(items: breadcrumbs, selection: $selection)
    }
}

#Preview {
    GraduationSwapDemo()
}

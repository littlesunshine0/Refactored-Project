import SwiftUI

struct ChoreoBreadcrumbItem: Identifiable, Equatable {
    let id = UUID()
    let title: String
}

struct ChoreoBreadcrumbSystem: View {
    let items: [ChoreoBreadcrumbItem]
    @Binding var selection: Int
    @Namespace private var ns

    var body: some View {
        VStack(spacing: 0) {
            // TITLE (the "lead dancer")
            ZStack {
                ForEach(items.indices, id: \.self) { idx in
                    if idx == selection {
                        Text(items[idx].title)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                            .matchedGeometryEffect(id: "title-\(items[idx].id)", in: ns)
                            .transition(.move(edge: .top).combined(with: .opacity))
                    }
                }
            }
            .frame(height: 60)
            .padding(.top, 50)
            .padding(.bottom, 10)

            // BREADCRUMB CAROUSEL ("ensemble dancers")
            HStack(spacing: 12) {
                ForEach(items.indices, id: \.self) { idx in
                    if idx == selection {
                        Spacer().frame(width: 0) // Spaceholder for the one animating up
                    } else {
                        Button(action: {
                            withAnimation(.spring(response: 0.48, dampingFraction: 0.87)) {
                                selection = idx
                            }
                        }) {
                            Text(items[idx].title)
                                .fontWeight(.semibold)
                                .foregroundColor(.accentColor)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 18)
                                .background(
                                    RoundedRectangle(cornerRadius: 18)
                                        .fill(Color(.systemGray6))
                                )
                                .matchedGeometryEffect(id: "title-\(items[idx].id)", in: ns)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Color(.systemBackground).opacity(0.9))
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            .shadow(color: Color.black.opacity(0.07), radius: 3, x: 0, y: 1)
            .zIndex(1)

            // PAGE CONTENT
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

struct ChoreoBreadcrumbDemo: View {
    @State private var selection = 2

    let breadcrumbs = [
        ChoreoBreadcrumbItem(title: "Home"),
        ChoreoBreadcrumbItem(title: "Shop"),
        ChoreoBreadcrumbItem(title: "Electronics"),
        ChoreoBreadcrumbItem(title: "Laptops"),
        ChoreoBreadcrumbItem(title: "Accessories"),
        ChoreoBreadcrumbItem(title: "Checkout"),
    ]

    var body: some View {
        ChoreoBreadcrumbSystem(items: breadcrumbs, selection: $selection)
    }
}

#Preview {
    ChoreoBreadcrumbDemo()
}

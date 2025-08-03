import SwiftUI

struct AppleBreadcrumbItem: Identifiable {
    let id = UUID()
    let title: String
    let action: (() -> Void)?
}

struct AppleBreadcrumbPill: View {
    let title: String
    let isActive: Bool

    var body: some View {
        Text(title)
            .fontWeight(isActive ? .semibold : .regular)
            .foregroundColor(isActive ? .white : .accentColor)
            .padding(.vertical, 8)
            .padding(.horizontal, 18)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(isActive ? Color.accentColor : Color(.systemGray6))
            )
            .lineLimit(1)
            .truncationMode(.tail)
            .animation(.easeInOut, value: isActive)
    }
}

struct AppleCarouselBreadcrumbView: View {
    let items: [AppleBreadcrumbItem]
    @Binding var selection: Int

    var body: some View {
        ScrollViewReader { scrollProxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(Array(items.enumerated()), id: \.1.id) { idx, item in
                        Button(action: {
                            withAnimation(.easeInOut) {
                                selection = idx
                                scrollProxy.scrollTo(item.id, anchor: .center)
                                item.action?()
                            }
                        }) {
                            AppleBreadcrumbPill(title: item.title, isActive: selection == idx)
                        }
                        .id(item.id)
                        .buttonStyle(.plain)
                        .disabled(selection == idx)
                    }
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
            }
            .background(Color(.systemBackground).opacity(0.8))
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 1)
            .padding()
            // Automatically scroll to current on appear or selection change
            .onAppear {
                scrollProxy.scrollTo(items[selection].id, anchor: .center)
            }
            .onChange(of: selection) { newValue in
                withAnimation(.easeInOut) {
                    scrollProxy.scrollTo(items[newValue].id, anchor: .center)
                }
            }
        }
    }
}

struct ContentView: View {
    @State private var selection = 3

    let breadcrumbs = [
        AppleBreadcrumbItem(title: "Home", action: { print("Go Home") }),
        AppleBreadcrumbItem(title: "Shop", action: { print("Go Shop") }),
        AppleBreadcrumbItem(title: "Electronics", action: { print("Go Electronics") }),
        AppleBreadcrumbItem(title: "Laptops", action: { print("Go Laptops") }),
        AppleBreadcrumbItem(title: "Accessories", action: { print("Go Accessories") }),
        AppleBreadcrumbItem(title: "Checkout", action: { print("Go Checkout") }),
    ]

    var body: some View {
        VStack(spacing: 0) {
            // TITLE: Current Page Title, below the notch
            Text(breadcrumbs[selection].title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 40) // adjust for safe area
                .padding(.horizontal)
                .transition(.opacity.combined(with: .move(edge: .top)))
                .id("title-\(selection)")

            // BREADCRUMB CAROUSEL
            AppleCarouselBreadcrumbView(items: breadcrumbs, selection: $selection)

            // Your actual page content
            Spacer()
            Text("Content for \(breadcrumbs[selection].title)")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(.systemGroupedBackground))
        }
        .animation(.easeInOut, value: selection)
        .background(Color(.systemGroupedBackground))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}

import SwiftUI

struct AppleBreadcrumbItem: Identifiable {
    let id = UUID()
    let title: String
    let isActive: Bool
    let action: (() -> Void)?
}

struct AppleBreadcrumbPill: View {
    let item: AppleBreadcrumbItem

    var body: some View {
        Text(item.title)
            .fontWeight(item.isActive ? .semibold : .regular)
            .foregroundColor(item.isActive ? .white : .accentColor)
            .padding(.vertical, 8)
            .padding(.horizontal, 18)
            .background(
                Group {
                    if item.isActive {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.accentColor)
                    } else {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(.systemGray6))
                    }
                }
            )
            .lineLimit(1)
            .truncationMode(.tail)
    }
}

struct AppleCarouselBreadcrumbView: View {
    let items: [AppleBreadcrumbItem]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(items) { item in
                    Button(action: {
                        item.action?()
                    }) {
                        AppleBreadcrumbPill(item: item)
                    }
                    .buttonStyle(.plain)
                    .disabled(item.isActive)
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
        }
        .background(Color(.systemBackground).opacity(0.8))
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 1)
        .padding()
    }
}

struct ContentView: View {
    @State private var selection = 3 // Example: Laptops is active
    
    var body: some View {
        AppleCarouselBreadcrumbView(items: [
            AppleBreadcrumbItem(title: "Home", isActive: selection == 0, action: { print("Go Home") }),
            AppleBreadcrumbItem(title: "Shop", isActive: selection == 1, action: { print("Go Shop") }),
            AppleBreadcrumbItem(title: "Electronics", isActive: selection == 2, action: { print("Go Electronics") }),
            AppleBreadcrumbItem(title: "Laptops", isActive: selection == 3, action: { print("Go Laptops") }),
            AppleBreadcrumbItem(title: "Accessories", isActive: selection == 4, action: { print("Go Accessories") }),
            AppleBreadcrumbItem(title: "Checkout", isActive: selection == 5, action: { print("Go Checkout") }),
        ])
        .background(Color(.systemGroupedBackground))
    }
}

#Preview {
    ContentView()
}

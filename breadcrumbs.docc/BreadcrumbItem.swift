import SwiftUI

struct AppleBreadcrumbItem: Identifiable {
    let id = UUID()
    let title: String
    let isActive: Bool
    let action: (() -> Void)?
}

// Extracted subview for each breadcrumb "pill"
struct AppleBreadcrumbPill: View {
    let item: AppleBreadcrumbItem

    var body: some View {
        Text(item.title)
            .fontWeight(item.isActive ? .semibold : .regular)
            .foregroundColor(item.isActive ? .accentColor : .primary)
            .padding(.vertical, 6)
            .padding(.horizontal, 14)
            .background(
                Group {
                    if item.isActive {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.accentColor.opacity(0.15))
                    }
                }
            )
            .lineLimit(1)
            .truncationMode(.tail)
    }
}

struct AppleBreadcrumbView: View {
    let items: [AppleBreadcrumbItem]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(items.indices, id: \.self) { idx in
                    let item = items[idx]
                    Button(action: {
                        item.action?()
                    }) {
                        AppleBreadcrumbPill(item: item)
                    }
                    .buttonStyle(.plain)
                    .disabled(item.isActive)
                    
                    if idx < items.count - 1 {
                        Image(systemName: "chevron.right")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.secondary)
                            .padding(.horizontal, 4)
                    }
                }
            }
            .padding(.vertical)
            .background(Color(.systemBackground).opacity(0.8))
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 1)
        }
        .padding(.horizontal)
    }
}

struct ContentView: View {
    var body: some View {
        AppleBreadcrumbView(items: [
            AppleBreadcrumbItem(title: "Home", isActive: false, action: { print("Go Home") }),
            AppleBreadcrumbItem(title: "Shop", isActive: false, action: { print("Go Shop") }),
            AppleBreadcrumbItem(title: "Electronics", isActive: false, action: { print("Go Electronics") }),
            AppleBreadcrumbItem(title: "Laptops", isActive: true, action: nil),
        ])
        .background(Color(.systemGroupedBackground))
    }
}

#Preview {
    ContentView()
}

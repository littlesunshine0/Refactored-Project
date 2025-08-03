//
//  SafariBreadcrumbItem.swift
//  Jot
//
//  Created by garyrobertellis on 7/26/25.
//


import SwiftUI

struct SafariBreadcrumbItem: Identifiable {
    let id = UUID()
    let title: String
    let icon: String?
    let isActive: Bool
    let action: (() -> Void)?
}

struct SafariBreadcrumbView: View {
    let items: [SafariBreadcrumbItem]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(Array(items.enumerated()), id: \.1.id) { idx, item in
                    Button(action: {
                        item.action?()
                    }) {
                        HStack(spacing: 6) {
                            if let icon = item.icon {
                                Image(systemName: icon)
                                    .foregroundColor(item.isActive ? .white : .accentColor)
                            }
                            Text(item.title)
                                .fontWeight(item.isActive ? .bold : .regular)
                                .foregroundColor(item.isActive ? .white : .accentColor)
                                .lineLimit(1)
                        }
                        .padding(.vertical, 8)
                        .padding(.horizontal, 18)
                        .background(
                            Capsule()
                                .fill(item.isActive ? Color.accentColor : Color(.systemGray6))
                        )
                        .shadow(color: item.isActive ? Color.accentColor.opacity(0.22) : .clear, radius: 3, x: 0, y: 2)
                        .overlay(
                            Capsule()
                                .stroke(Color.accentColor.opacity(item.isActive ? 0.0 : 0.2), lineWidth: 1)
                        )
                    }
                    .buttonStyle(.plain)
                    .disabled(item.isActive)
                    
                    if idx < items.count - 1 {
                        Image(systemName: "chevron.right")
                            .foregroundColor(.accentColor)
                            .padding(.horizontal, 4)
                    }
                }
            }
            .padding()
        }
    }
}

// Preview Example
struct SafariBreadcrumb_Previews: PreviewProvider {
    static var previews: some View {
        SafariBreadcrumbView(items: [
            SafariBreadcrumbItem(title: "Home", icon: "house", isActive: false, action: {}),
            SafariBreadcrumbItem(title: "Shop", icon: "bag", isActive: false, action: {}),
            SafariBreadcrumbItem(title: "Electronics", icon: "tv", isActive: false, action: {}),
            SafariBreadcrumbItem(title: "Laptops", icon: "laptopcomputer", isActive: true, action: nil)
        ])
        .background(Color(.systemGroupedBackground))
    }
}

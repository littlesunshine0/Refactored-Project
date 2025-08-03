import Foundation

// MARK: - User Role and Access Control

enum UserRole: String, Codable, CaseIterable {
    case guest
    case member
    case contributor
    case editor
    case admin
    case superadmin
}

enum AccessLevel: String, Codable {
    case readOnly
    case readWrite
    case fullControl
}

// MARK: - Role-Group Bridge Protocol (for future UserGroup.swift)

protocol RoleGroupBridge {
    var role: UserRole { get }
    var accessLevel: AccessLevel { get }
}

import Foundation

// MARK: - User Account

// Note: UserRole and UserGroup types should be declared in separate files (UserRole.swift, UserGroup.swift) for modular clarity.

struct UserAccount: Identifiable, Codable, Hashable {
    let id: UUID
    var username: String
    var email: String
    var passwordHash: String
    var requiresTwoFactor: Bool
    var localAuthEnabled: Bool
    var lastLoginDate: Date?
    var offlineAccessToken: String?

    var role: UserRole
    var groups: [UserGroup]

    init(
        id: UUID = UUID(),
        username: String,
        email: String,
        passwordHash: String,
        requiresTwoFactor: Bool = true,
        localAuthEnabled: Bool = true,
        lastLoginDate: Date? = nil,
        offlineAccessToken: String? = nil,
        role: UserRole = .member,
        groups: [UserGroup] = []
    ) {
        self.id = id
        self.username = username
        self.email = email
        self.passwordHash = passwordHash
        self.requiresTwoFactor = requiresTwoFactor
        self.localAuthEnabled = localAuthEnabled
        self.lastLoginDate = lastLoginDate
        self.offlineAccessToken = offlineAccessToken
        self.role = role
        self.groups = groups
    }
}

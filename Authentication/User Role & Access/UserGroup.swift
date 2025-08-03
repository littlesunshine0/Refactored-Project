import Foundation


// MARK: - User Group for Collaboration

struct UserGroup: Identifiable, Codable, Hashable {
    var id: UUID
    var name: String
    var memberIDs: [UUID] // IDs of UserAccounts
    var accessLevel: AccessLevel

    init(id: UUID = UUID(), name: String, memberIDs: [UUID], accessLevel: AccessLevel) {
        self.id = id
        self.name = name
        self.memberIDs = memberIDs
        self.accessLevel = accessLevel
    }
}

// MARK: - Bridge Extension for UserAccount

extension UserAccount {
    func hasAccess(to group: UserGroup) -> Bool {
        return group.memberIDs.contains(self.id)
    }

    func accessLevel(for group: UserGroup) -> AccessLevel? {
        return hasAccess(to: group) ? group.accessLevel : nil
    }
}


import Foundation

// MARK: - Auth Session State

enum AuthStatus: String, Codable {
    case unauthenticated
    case authenticating
    case awaitingTwoFactor
    case awaitingVerification
    case awaitingPasswordReset
    case socialAuthPending
    case phoneAuthPending
    case guest
    case offlineAuthenticated
    case authenticated
    case failed
}

enum AuthProvider: String, Codable {
    case email
    case phone
    case apple
    case google
    case guest
}

struct AuthSession: Codable {
    var user: UserAccount?
    var status: AuthStatus
    var errorMessage: String?
    var provider: AuthProvider?
    var lastChecked: Date
    var deviceID: String?
}

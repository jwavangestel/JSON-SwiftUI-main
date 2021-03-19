import SwiftUI

struct User: Codable, Identifiable {
    let id = UUID()
    let name: String
    var document: Document
}

struct Document: Codable, Identifiable {
    let id = UUID()
    var count: Int
    var profiles: [Profiles]
}

struct Profiles: Codable {
    let id = UUID()
    var name, email: String
    var items: [Items]
}

struct Items: Codable {
    var name, email: String
}


import SwiftUI

struct User: Codable, Identifiable {
    let id = UUID()
    let username: String
    let name: String
    var document: Document
}

struct Document: Codable, Identifiable {
    let id = UUID()
    var count: Int
    var profiles: [Profile]
}

struct Profile: Codable {
    let id = UUID()
    var name, email: String
    var item: [Item]
}

struct Item: Codable {
    var name, email: String
}


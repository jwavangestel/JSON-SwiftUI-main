import SwiftUI

struct User: Codable, Identifiable {
    let id = UUID()
    let name: String
    var subthemas: Document
}

struct Document: Codable, Identifiable {
    let id = UUID()
    var count: Int
    var subthema: [Profiles]
}

struct Profiles: Codable {
    let id = UUID()
    var name, email: String
    var items: [Items]
}

struct Items: Codable {
    var name: String
    var item: String
}


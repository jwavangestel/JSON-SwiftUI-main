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
    let id = UUID()
    var name: String
    var item: [Item]
}
struct Item: Codable {
    var desc: String
}


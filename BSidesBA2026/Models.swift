import Foundation

struct EventSession: Identifiable, Codable, Hashable {
    let id: UUID
    let title: String
    let description: String
    let speaker: String
    let timeStart: String
    let timeEnd: String
    let room: String
    let theme: String
}

struct Speaker: Identifiable, Codable, Hashable {
    let id: UUID
    let name: String
    let bio: String
    let talkIDs: [UUID]
    // Optional social links
    let twitter: String?
    let linkedin: String?
    let github: String?
}



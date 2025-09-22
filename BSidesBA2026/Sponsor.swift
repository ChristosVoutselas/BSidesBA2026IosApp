import Foundation

struct Sponsor: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let logoName: String   // Asset catalog image
    let url: String        // Sponsor’s website
    let category: String   // e.g. Gold, Silver, Community
}

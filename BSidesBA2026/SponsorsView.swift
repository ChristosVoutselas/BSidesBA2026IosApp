import SwiftUI

struct SponsorsView: View {
    let sponsors: [Sponsor]
    
    @State private var showingToast = false
    
    // Group sponsors by category
    private var groupedSponsors: [String: [Sponsor]] {
        Dictionary(grouping: sponsors, by: { $0.category })
    }
    
    // Grid layout
    private var gridColumns: [GridItem] {
        [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    }
    
    var body: some View {
        NavigationView {
        
            
            
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(groupedSponsors.keys.sorted(), id: \.self) { category in
                        VStack(alignment: .leading, spacing: 12) {
                            Text(category)
                                .font(.headline)
                                .padding(.horizontal)
                            
                            LazyVGrid(columns: gridColumns, spacing: 20) {
                                ForEach(groupedSponsors[category] ?? []) { sponsor in
                                    VStack {
                                        Image(sponsor.logoName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 60)
                                            .cornerRadius(8)
                                            .shadow(radius: 2)
                                    }
                                    .contentShape(Rectangle())
                                    .onTapGesture {
                                        if let url = URL(string: sponsor.url) {
                                            UIApplication.shared.open(url)
                                        }
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    BannerAdView(adUnitID: "ca-app-pub-2522111807269313/4051682494")
                        .frame(width: 320, height: 50) // Standard banner size
                                        .frame(maxWidth: .infinity)
                    
                    // Become a Sponsor button
                    VStack {
                        Button {
                            showingToast = true
                            openSponsorEmail()
                        } label: {
                            Label("Become a Sponsor", systemImage: "envelope.fill")
                                .font(.headline)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue.opacity(0.1))
                                .cornerRadius(12)
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.vertical)
            }
            .background(Color.white) // ✅ Always white background
            .navigationTitle("")
        }
        .background(Color.white) // ✅ Keep nav container white
        .toast(isPresented: $showingToast, message: "Opening Mail…")
    }
    
    // MARK: - Open Mail with pre-filled email
    private func openSponsorEmail() {
        let subject = "BSides Bratislava 2026 Sponsorship"
        let body = "Hello BSides Bratislava Team,\n\nI’m interested in becoming a sponsor for the 2026 event. Please send me more details.\n\nThank you."
        let email = "sponsor@bsidesba.sk"
        let urlString = "mailto:\(email)?subject=\(subject)&body=\(body)"
        
        if let encoded = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
           let url = URL(string: encoded) {
            UIApplication.shared.open(url)
        }
    }
}

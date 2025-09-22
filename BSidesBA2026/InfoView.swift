import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    // Event Banner
                    Image("bsides_logo") // make sure you have an asset in Assets.xcassets
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .padding(.bottom, 10)
                    
                    // Event Details
                    VStack(alignment: .leading, spacing: 8) {
                        Text("BSides Bratislava 2026")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("📅 May 26 2026")
                            .font(.headline)
                        
                        Text("📍 FIIT STU")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                    Divider()
                    
                    // Description
                    Text("About the Event")
                        .font(.headline)
                    Text("Each BSides is a community-driven framework for building events for and by information security community members.The goal is to expand the spectrum of conversation beyond the traditional confines of space and time.It creates opportunities for individuals to both present and participate in an intimate atmosphere that encourages collaboration.It is an intense event with discussions, demos, and interaction from participants.It is where conversations for the next-big-thing are happening.")
                        .font(.body)
                        .foregroundColor(.primary)
                    
                    Divider()
                    
                    // Links
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Useful Links")
                            .font(.headline)
                        
                        Link(destination: URL(string: "https://bsidesba.sk")!) {
                                                    HStack {
                                                        Image(systemName: "globe")
                                                        Text("Official Website")
                                                    }
                                                }
                                                
                                                Link(destination: URL(string: "https://x.com/BSidesBA")!) {
                                                    HStack {
                                                        Text("❌")
                                                        Text("Follow us on X")
                                                    }
                                                }
                                                
                                                Link(destination: URL(string: "https://www.linkedin.com/company/bsidesslovakia")!) {
                                                    HStack {
                                                        Image(systemName: "briefcase")
                                                            Text("LinkedIn")
                                                    }
                                                }
                                                
                                                Link(destination: URL(string: "https://bsky.app/profile/bsidesba.sk")!) {
                                                    HStack {
                                                        Text("🦋")
                                                        Text("Bluesky")
                                                    }
                                                }
                                                
                                                Link(destination: URL(string: "https://infosec.exchange/@bsidesba")!) {
                                                    HStack {
                                                        Text("🦣")
                                                        Text("Infosec Exchange")
                                                    }
                                                }
                                            }
                    
                    Spacer()
                }
                .padding()
            }
            .navigationTitle("")
        }
    }
}

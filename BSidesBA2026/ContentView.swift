import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            // ℹ️ Info (FIRST TAB)
            InfoView()
                .tabItem { Label("Info", systemImage: "info.circle") }
        

            // 📅 Schedule
            NavigationView {
                List {
                    ForEach(Sessions) { session in
                        NavigationLink(destination: SessionDetailView(session: session)) {
                            
                            VStack(alignment: .leading, spacing: 12) {
                                
                                Text(session.title)
                                
                                HStack(spacing: 8) {
                                    
                                    Text(session.timeStart)
                                    Text("→")
                                    Text(session.timeEnd)
                                }
                                .foregroundStyle(.secondary)
                                
                                
                            }
                        }
                    }
                }
                .navigationTitle("Schedule")
            }
            .tabItem { Label("Schedule", systemImage: "calendar") }
            
            
            RegisterView()
                .tabItem {
                    Label("Register", systemImage: "ticket.fill")
                }

            

            // 🧑‍🤝‍🧑 Speakers
            NavigationView {
                List(Speakers) { speaker in
                    VStack(alignment: .leading) {
                        Text(speaker.name)
                            .font(.headline)
                        Text(speaker.bio)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
                .navigationTitle("Speakers")
            }
            .tabItem { Label("Speakers", systemImage: "person.2") }
            
            SponsorsView(sponsors: Sponsors)
                .tabItem {
                    Label("Sponsors", systemImage: "star.circle.fill")
                }



            // 🗺 Venue
            VenueView()
                .tabItem { Label("Venue", systemImage: "map") }
        }
    }
}

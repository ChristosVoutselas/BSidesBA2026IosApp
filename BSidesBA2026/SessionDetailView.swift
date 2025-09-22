import SwiftUI

struct SessionDetailView: View {
    let session: EventSession

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Text(session.title)
                    .font(.title)
                    .fontWeight(.bold)
                
                HStack(spacing: 8) {
                    Text(session.speaker)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                    
                HStack(spacing: 8) {
                    Image(systemName: "clock")
                    Text(session.timeStart)
                    Text("→")
                    Text(session.timeEnd)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)

                HStack(spacing: 8) {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Room: \(session.room)")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)

                Divider()
                
                Text(session.theme)
                    .font(.body)
            }
            .padding()
        }
        .navigationTitle("")
    }
}


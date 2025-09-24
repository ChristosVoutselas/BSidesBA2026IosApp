import SwiftUI

struct RegisterView: View {
    @State private var showingToast = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 24) {
                
                // Event Banner
                Image("bsides_logo") // make sure you have an asset in Assets.xcassets
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .padding(.bottom, 10)
                
                
                BannerAdView(adUnitID: "ca-app-pub-2522111807269313/1861289965")
                    .frame(width: 320, height: 50) // Standard banner size
                                    .frame(maxWidth: .infinity)
                
                // Header
                Text("Register for BSides Bratislava 2026")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                
                Text("Secure your spot at one of the top infosec community events in Central Europe.")
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Spacer()
                
                // Register Button
                Button {
                    showingToast = true
                    openRegistrationPage()
                } label: {
                    Label("Register Now", systemImage: "ticket.fill")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .font(.headline)
                }
                .buttonStyle(.borderedProminent)
                .padding(.horizontal)
                
                // Contact Button (optional)
                Button {
                    showingToast = true
                    openContactEmail()
                } label: {
                    Label("Need Help? Contact Us", systemImage: "envelope.fill")
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .buttonStyle(.bordered)
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationTitle("")
        }
        .toast(isPresented: $showingToast, message: "Opening…")
    }
    
    // MARK: - Open registration website
    private func openRegistrationPage() {
        if let url = URL(string: "https://bsidesba.sk/register") { // replace with real link
            UIApplication.shared.open(url)
        }
    }
    
    // MARK: - Open support email
    private func openContactEmail() {
        let subject = "BSides Bratislava 2026 Registration Help"
        let body = "Hello BSides Bratislava Team,\n\nI need help with registration for the 2026 event.\n\nThank you."
        let email = "info@bsidesba.sk"
        let urlString = "mailto:\(email)?subject=\(subject)&body=\(body)"
        
        if let encoded = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
           let url = URL(string: encoded) {
            UIApplication.shared.open(url)
        }
    }
}

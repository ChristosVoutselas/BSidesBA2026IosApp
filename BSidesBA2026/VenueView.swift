import SwiftUI
import MapKit

struct VenueView: View {
    private let venueCoordinate = CLLocationCoordinate2D(
        latitude: 48.15341348799692,
        longitude: 17.07155088839626
    )
    
    @State private var cameraPosition: MapCameraPosition
    
    init() {
        let region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: 48.15341348799692,
                longitude: 17.07155088839626
            ),
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        )
        _cameraPosition = State(initialValue: .region(region))
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    // Map with pin
                    if #available(iOS 17.0, *) {
                        Map(position: $cameraPosition) {
                            Annotation("BSides Bratislava 2026",
                                       coordinate: venueCoordinate,
                                       anchor: .bottom) {
                                Image(systemName: "mappin.circle.fill")
                                    .resizable()
                                    .frame(width: 32, height: 32)
                                    .foregroundStyle(.red)
                                    .shadow(radius: 4)
                            }
                        }
                        .frame(height: 250)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                    
                    // Direction buttons
                    VStack(spacing: 12) {
                        Button {
                            openDirections(mode: MKLaunchOptionsDirectionsModeWalking)
                        } label: {
                            Label("Walk", systemImage: "figure.walk")
                                .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.borderedProminent)
                        
                        Button {
                            openDirections(mode: MKLaunchOptionsDirectionsModeDriving)
                        } label: {
                            Label("Drive", systemImage: "car.fill")
                                .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.borderedProminent)
                        
                        Button {
                            openDirections(mode: MKLaunchOptionsDirectionsModeTransit)
                        } label: {
                            Label("Transit", systemImage: "tram.fill")
                                .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    
                    Divider()
                    
                    // Venue info
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Venue")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("BSides Bratislava 2026")
                            .font(.headline)
                        
                        Text("📍 Ilkovičova 2, 842 16 Karlova Ves")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
                .padding()
            }
            .navigationTitle("Venue")
        }
    }
    
    // MARK: - Open Apple Maps
    private func openDirections(mode: String) {
        let placemark = MKPlacemark(coordinate: venueCoordinate)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "BSides Bratislava 2026"
        
        mapItem.openInMaps(launchOptions: [
            MKLaunchOptionsDirectionsModeKey: mode
        ])
    }
}

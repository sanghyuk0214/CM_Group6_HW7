//
//  MapView.swift
//  CMHW7
//
//  Created by snlcom on 2023/05/09.
//

import MapKit
import SwiftUI
struct MapView: View {
    @EnvironmentObject var structures: Structures
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 39.935539, longitude: 116.405640),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: structures.structures) { structure in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: structure.latitude, longitude: structure.longitude)) {
                NavigationLink(destination: ContentView(structure: structure)) {
                    Image(structure.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3)
                }
            }
        }
        .navigationTitle("World Map")
    }
}

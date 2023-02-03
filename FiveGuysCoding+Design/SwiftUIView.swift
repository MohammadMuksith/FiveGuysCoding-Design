//
//  SwiftUIView.swift
//  FiveGuysCoding+Design
//
//  Created by Mohammad Muksith on 2/1/23.
//

import SwiftUI
import MapKit
import SceneKit

struct Citys: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

struct MapViews: View {
    @State private var searchText = ""
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 42.3314, longitude: -83.0458), span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03))
    let annotation = MKPointAnnotation()
    let cities: [Citys] = [
        Citys(coordinate: .init(latitude: 42.3324, longitude: -83.0458)),
        Citys(coordinate: .init(latitude: 42.3314, longitude: -83.0498)),
        Citys(coordinate: .init(latitude: 42.3514, longitude: -83.0598))
    ]
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: cities) { city in
            MapMarker(coordinate: city.coordinate, tint: .red)
        }
        .ignoresSafeArea()
    }
    
    struct MapViews_Previews: PreviewProvider {
        static var previews: some View {
            MapViews()
        }
    }
}

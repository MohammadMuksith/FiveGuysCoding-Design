//
//  ContentView.swift
//  FiveGuysCoding+Design
//
//  Created by Mohammad Muksith on 1/17/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(
                    latitude: 40.83834587046632,
                    longitude: 14.254053016537693),
                span: MKCoordinateSpan(
                    latitudeDelta: 0.03,
                    longitudeDelta: 0.03)
                )

    var body: some View {
      
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.all)
    }
}

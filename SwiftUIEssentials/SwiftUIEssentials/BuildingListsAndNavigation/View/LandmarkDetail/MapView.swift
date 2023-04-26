//
//  MapView.swift
//  SwiftUIEssentials
//
//  Created by Abhilash Palem on 10/04/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    let coordinate: CLLocationCoordinate2D
    @State var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 17.373019, longitude: 78.547636), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate: coordinate)
            }
    }
    
    private func setRegion(coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: coordinate, span: .init(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 17.373019, longitude: 78.547636))
    }
}

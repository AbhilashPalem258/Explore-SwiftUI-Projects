//
//  LandmarksView.swift
//  SwiftUIEssentials
//
//  Created by Abhilash Palem on 10/04/22.
//

import SwiftUI

let landmarks: [Landmark] = load(from: "landmarkData.json")

struct LandmarksView: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                   LandmarkDetail(landmark: landmark)
                } label: {
                   LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarksView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarksView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}

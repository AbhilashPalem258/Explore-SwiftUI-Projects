//
//  LandmarkDetail.swift
//  SwiftUIEssentials
//
//  Created by Abhilash Palem on 10/04/22.
//

import SwiftUI

struct LandmarkDetail: View {
    let landmark: Landmark
    
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: landmark.location)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                CircleImageView(image: landmark.image)
                    .offset(y: -130.0)
                    .padding(.bottom, -130.0)
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Spacer()
                        
                        Text(landmark.state)
                            .foregroundColor(.secondary)
                    }
                    Divider()
                    Text("About " + landmark.name)
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding()
                Spacer()
            }
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}

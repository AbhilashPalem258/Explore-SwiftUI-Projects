//
//  SwiftUIEssentialsApp.swift
//  SwiftUIEssentials
//
//  Created by Abhilash Palem on 10/04/22.
//

import SwiftUI

@main
struct SwiftUIEssentialsApp: App {
    let landmarks: [Landmark] = load(from: "landmarkData.json")
    var body: some Scene {
        WindowGroup {
            LandmarksView()
        }
    }
}

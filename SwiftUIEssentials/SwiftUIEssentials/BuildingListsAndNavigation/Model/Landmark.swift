//
//  Landmark.swift
//  SwiftUIEssentials
//
//  Created by Abhilash Palem on 10/04/22.
//

import Foundation
import CoreLocation
import SwiftUI

struct Landmark: Decodable, Identifiable {
    let id: Int
    let name: String
    let category: String
    let city: String
    let state: String
    let isFeatured: Bool
    let isFavorite: Bool
    let park: String
    
    private let coordinates: Coordinate
    var location: CLLocationCoordinate2D {
        return .init(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinate: Decodable {
        let longitude: Double
        let latitude: Double
    }
    
    let description: String
    
    private let imageName: String
    var image: Image {
        Image(imageName)
    }
}
extension Landmark: Hashable {
    static func == (lhs: Landmark, rhs: Landmark) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
    }
}

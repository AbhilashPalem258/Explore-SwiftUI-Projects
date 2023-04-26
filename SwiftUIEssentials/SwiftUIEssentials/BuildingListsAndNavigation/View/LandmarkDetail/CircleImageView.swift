//
//  CircleImageView.swift
//  SwiftUIEssentials
//
//  Created by Abhilash Palem on 10/04/22.
//

import SwiftUI

struct CircleImageView: View {
    let image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(.white, lineWidth: 4.0))
            .shadow(radius: 4)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("turtlerock"))
            .previewLayout(.sizeThatFits)
    }
}

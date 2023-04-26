//
//  ContentView.swift
//  SwiftUIEssentials
//
//  Created by Abhilash Palem on 10/04/22.
//

import SwiftUI

/*
 - In the preview, Command-click the greeting to bring up the structured editing popover,
 */
struct CreatingAndCombiningViews: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("TurtleRock")
                .font(.title)
                .foregroundColor(.green)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct CreatingAndCombiningViews_Previews: PreviewProvider {
    static var previews: some View {
        CreatingAndCombiningViews()
    }
}

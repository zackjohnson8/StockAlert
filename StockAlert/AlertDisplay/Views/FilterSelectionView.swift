//
// Created by Zachary Johnson on 10/8/22.
//

import Foundation
import SwiftUI

enum FilterDirection: String {
    case up = "Up"
    case down = "Down"
}


struct FilterSelectionView: View {
    @State var selected = true
    @State private var filterDirection = FilterDirection.up
    @State private var volumeSpeed = 1000000000.0
    @State private var valueSpeed = 10000.0
    @State private var volumeIsEditing = false
    @State private var valueIsEditing = false
    var body: some View {
        if(selected) {
            HStack {
                Spacer()
                VStack(alignment: .leading) {
                    HStack {
                        Text("Direction")
                                .font(.subheadline)
                                .foregroundColor(Color(.gray))
                        Button(filterDirection.rawValue, action:(
                                {
                                    if(filterDirection == FilterDirection.up) {
                                        filterDirection = FilterDirection.down
                                    } else {
                                        filterDirection = FilterDirection.up
                                    }
                                }))
                    }
                    HStack {
                        Text("Value")
                                .font(.subheadline)
                                .foregroundColor(Color(.gray))
                        // TODO: Implement a range slider
                        Slider(value: $valueSpeed,
                                in: 0...10000,
                                onEditingChanged: { editing in
                                    valueIsEditing = editing
                                })
                        Text("\(Int(valueSpeed))")
                                .font(.subheadline)
                                .foregroundColor(Color(.gray))
                    }
                    HStack {
                        Text("Volume")
                                .font(.subheadline)
                                .foregroundColor(Color(.gray))
                        // TODO: Implement a range slider
                        Slider(value: $volumeSpeed,
                                in: 0...1000000000,
                                onEditingChanged: { editing in
                                    volumeIsEditing = editing
                                })
                        Text("\(Int(volumeSpeed))")
                                .font(.subheadline)
                                .foregroundColor(Color(.gray))
                    }
                }
                Spacer()
            }
        }
    }
}
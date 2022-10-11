//
// Created by Zachary Johnson on 10/8/22.
//

import Foundation
import SwiftUI

struct FilterButtonView: View {

    var filterName: String
    @State var toggled = false

    init(filterName: String, toggle: Bool = false) {
        self.filterName = filterName
        self.toggled = toggle
    }

    var body: some View {
        Button(action: {
            toggled = !toggled
        }, label: {
            Text(filterName)
                    .font(.body)
                    .foregroundColor(toggled ? Color(.systemBlue) : Color(.gray))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background(toggled ? Color(.systemGray4) : Color(.systemGray6))
                    .cornerRadius(10)
        })
    }
}


//
// Created by Zachary Johnson on 10/6/22.
//

import Foundation
import SwiftUI

struct AlertNavigationView: View {
    var filterView = FilterView()
    var alertStockListView = AlertStockListView()

    init() {
        UINavigationBar.appearance().largeTitleTextAttributes =
                [.font: UIFont(name: "AvenirNext-DemiBold", size: 40)!]
    }

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                filterView
                alertStockListView
            }.navigationTitle(Text("Alerts").font(.subheadline))
            // Todo: Replace the text with an image of the logo/name
        }
    }
}

struct AlertNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        AlertNavigationView()
    }
}

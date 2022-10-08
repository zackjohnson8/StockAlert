//
// Created by Zachary Johnson on 10/6/22.
//

import Foundation
import SwiftUI

struct AlertNavigationView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes =
                [.font: UIFont(name: "AvenirNext-DemiBold", size: 40)!]
    }

    var body: some View {
        NavigationView {
            GeometryReader { metrics in
                VStack(alignment: .leading) {
                    AlertGraphView()
                            .frame(
                                    minWidth: 0,
                                    maxWidth: .infinity,
                                    minHeight: 0,
                                    maxHeight: metrics.size.height * 0.30,
                                    alignment: .topLeading
                            )

                    AlertStockListView()
                }
                        .navigationTitle(Text("Alerts").font(.subheadline))
                        .navigationBarItems(trailing:
                        Button(action: {
                            print("User icon pressed...")
                        }) {
                            Image(systemName: "gearshape.fill").imageScale(.large)
                        })
            }
        }
    }
}

struct AlertNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        AlertNavigationView()
    }
}

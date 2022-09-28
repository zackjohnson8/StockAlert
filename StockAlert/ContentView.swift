//
//  ContentView.swift
//  StockAlert
//
//  Created by Zachary Johnson on 9/24/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes =
                [.font: UIFont(name: "AvenirNext-DemiBold", size: 40)!]
    }

    var body: some View {
        NavigationView {
            GeometryReader { metrics in
                VStack(alignment: .leading) {
                    GraphView()
                            .frame(
                                    minWidth: 0,
                                    maxWidth: .infinity,
                                    minHeight: 0,
                                    maxHeight: metrics.size.height * 0.30,
                                    alignment: .topLeading
                            )
                            .border(.black, width: 2)

                    Spacer()

                    StockListView()
                            .frame(
                                    minWidth: 0,
                                    maxWidth: .infinity,
                                    minHeight: 0,
                                    maxHeight: .infinity,
                                    alignment: .topLeading
                            )
                            .border(.black, width: 2)


                }
                        .navigationTitle(Text("Alerts").font(.subheadline))
                        .navigationBarItems(trailing:
                        Button(action: {
                            print("User icon pressed...")
                        }) {
                            Image(systemName: "gearshape.fill").imageScale(.large)
                        })
                        .border(.black, width: 2)
            }
        }
        .border(.black, width: 2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        return ContentView()
    }
}


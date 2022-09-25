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
                [.font : UIFont(name: "AvenirNext-DemiBold", size: 40)!]
    }

    var body: some View {
        NavigationView {
            VStack {
                Section(header: Text("Items")) {
                    Text("Item 1")
                }
            }.navigationTitle(Text("Nav Text").font(.subheadline))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        return ContentView()
    }
}

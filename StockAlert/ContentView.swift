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

                    VStack(alignment: .leading) {
                        Spacer()
                        Text("VStack")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .padding(.leading)
                                .frame(maxWidth: .infinity, alignment: .top)
                                .border(.black, width: 2)
                        Spacer()
                    }
                            .frame(
                                    minWidth: 0,
                                    maxWidth: .infinity,
                                    minHeight: 0,
                                    maxHeight: metrics.size.height * 0.30,
                                    alignment: .topLeading
                            )
                            .border(.black, width: 2)

                    Spacer()

                    VStack(alignment: .leading) {
                        Spacer()
                        Text("VStack")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .padding(.leading)
                                .frame(maxWidth: .infinity, alignment: .top)
                                .border(.black, width: 2)
                        Spacer()
                    }
                            .frame(
                                    minWidth: 0,
                                    maxWidth: .infinity,
                                    minHeight: 0,
                                    maxHeight: .infinity,
                                    alignment: .topLeading
                            )
                            .border(.black, width: 2)


                }
                        .navigationTitle(Text("Nav Text").font(.subheadline))
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

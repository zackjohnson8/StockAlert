//
// Created by Zachary Johnson on 9/26/22.
//

import Foundation
import SwiftUI

struct AlertStockListView: View {
    var stockMovers: [StockMover]
    init() {
        stockMovers = StockDataService().getStockMovers()
    }
    var body: some View {
        GeometryReader { metrics in
            VStack(alignment: .leading) {
                Spacer()
                ScrollView(showsIndicators: false) {
                    ForEach(stockMovers, id: \.symbol) { stockMover in
                        StockMoverCardView(stockMover: stockMover).frame(width: metrics.size.width, height: metrics.size.height * 0.15)
                    }
                }
            }.frame(width: metrics.size.width, alignment: .center)
        }
    }
}

struct AlertStockListView_Previews: PreviewProvider {
    static var previews: some View {
        AlertStockListView()
    }
}

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
                List {
                    ForEach(stockMovers, id: \.symbol) { stockMover in
                        Section {
                            StockMoverCardView(stockMover: stockMover).frame(height: metrics.size.height * 0.1)
                        }
                    }
                }.listStyle(.insetGrouped)
            }
        }
    }
}

struct AlertStockListView_Previews: PreviewProvider {
    static var previews: some View {
        AlertStockListView()
    }
}

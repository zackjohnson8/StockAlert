//
// Created by Zachary Johnson on 10/7/22.
//

import Foundation
import SwiftUI

struct StockMoverCardView: View {
    var stockMover: StockMover
    var percentageChange: String

    init(stockMover: StockMover) {
        self.stockMover = stockMover
        let percentFormatter = NumberFormatter()
        percentFormatter.numberStyle = .percent
        percentFormatter.minimumFractionDigits = 1
        percentFormatter.maximumFractionDigits = 1
        percentageChange = percentFormatter.string(from: NSNumber(value: stockMover.change))!
    }

    var body: some View {
        HStack(alignment: .center) {
            HStack(alignment: .center) {
                Text(stockMover.symbol)
                        .font(.headline)
                        .accessibilityAddTraits(.isHeader)
            }
            VStack(alignment: .center) {
                if (stockMover.direction == "up") {
                    Image(systemName: "arrow.up")
                            .foregroundColor(.green)
                } else {
                    Image(systemName: "arrow.down")
                            .foregroundColor(.red)
                }
                Text("\(percentageChange)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
            }
            VStack(alignment: .center) {
                Text("Last Value")
                        .font(.headline)
                Text("\(stockMover.lastValue)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
            }
            VStack(alignment: .center) {
                Text("Total Volume")
                        .font(.headline)
                Text("\(stockMover.totalVolume)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
            }
        }

    }
}

struct StockMoverCardView_Previews: PreviewProvider {
    static var previews: some View {
        StockMoverCardView(stockMover: StockMover(change: 0.24046357615894032, description: "Heartbeam, Inc. - Common Stock", direction: "up", lastValue: 5.6193, symbol: "BEAT", totalVolume: 21227036))
    }
}

//
// Created by Zachary Johnson on 10/6/22.
//

import SwiftUI

struct StockDataService {
  func getStockMovers() -> [StockMover] {
    //TODO: replace the fake data with real data
    var stockMovers = [StockMover]()
    stockMovers.append(StockMover(change: 0.24046357615894032, description: "Heartbeam, Inc. - Common Stock", direction: "up", lastValue: 5.6193, symbol: "BEAT", totalVolume: 21227036))
    stockMovers.append(StockMover(change: 0.21212121212121207, description: "Provention Bio, Inc. - Common Stock", direction: "up", lastValue: 6.0, symbol: "PRVB", totalVolume: 6739838))
    stockMovers.append(StockMover(change: 0.10535363457760312, description: "Perion Network Ltd - Ordinary Shares", direction: "up", lastValue: 22.505, symbol: "PERI", totalVolume: 563872))
    stockMovers.append(StockMover(change: 0.10253051261187968, description: "Gossamer Bio, Inc. - Common Stock", direction: "up", lastValue: 13.5501, symbol: "GOSS", totalVolume: 514363))
    stockMovers.append(StockMover(change: 0.09741350352704072, description: "Amylyx Pharmaceuticals, Inc. - Common Stock", direction: "up", lastValue: 32.67, symbol: "AMLX", totalVolume: 1197528))
    stockMovers.append(StockMover(change: 0.08957415565345088, description: "89bio, Inc. - Common Stock", direction: "up", lastValue: 7.42, symbol: "ETNB", totalVolume: 748668))
    stockMovers.append(StockMover(change: 0.08415147265077147, description: "AST SpaceMobile, Inc. - Class A Common Stock", direction: "up", lastValue: 7.73, symbol: "ASTS", totalVolume: 976203))
    stockMovers.append(StockMover(change: 0.0807881773399015, description: "Ramaco Resources, Inc. - Common Stock", direction: "up", lastValue: 10.97, symbol: "METC", totalVolume: 506934))
    stockMovers.append(StockMover(change: 0.07853403141361244, description: "Avadel Pharmaceuticals plc - American Depositary Shares each representing one Or", direction: "up", lastValue: 6.18, symbol: "AVDL", totalVolume: 896741))
    stockMovers.append(StockMover(change: 0.06891271056661565, description: "Seres Therapeutics, Inc. - Common Stock", direction: "up", lastValue: 6.98, symbol: "MCRB", totalVolume: 269033))
    return stockMovers
  }
}

/*
[
 {change: 0.24046357615894032, description: "Heartbeam, Inc. - Common Stock", direction: "up", last: 5.6193, symbol: "BEAT", totalVolume: 21227036},
 {change: 0.21212121212121207, description: "Provention Bio, Inc. - Common Stock", direction: "up", last: 6.0, symbol: "PRVB", totalVolume: 6739838},
 {change: 0.10535363457760312, description: "Perion Network Ltd - Ordinary Shares", direction: "up", last: 22.505, symbol: "PERI", totalVolume: 563872},
 {change: 0.10253051261187968, description: "Gossamer Bio, Inc. - Common Stock", direction: "up", last: 13.5501, symbol: "GOSS", totalVolume: 514363},
 {change: 0.09741350352704072, description: "Amylyx Pharmaceuticals, Inc. - Common Stock", direction: "up", last: 32.67, symbol: "AMLX", totalVolume: 1197528},
 {change: 0.08957415565345088, description: "89bio, Inc. - Common Stock", direction: "up", last: 7.42, symbol: "ETNB", totalVolume: 748668},
 {change: 0.08415147265077147, description: "AST SpaceMobile, Inc. - Class A Common Stock", direction: "up", last: 7.73, symbol: "ASTS", totalVolume: 976203},
 {change: 0.0807881773399015, description: "Ramaco Resources, Inc. - Common Stock", direction: "up", last: 10.97, symbol: "METC", totalVolume: 506934},
 {change: 0.07853403141361244, description: "Avadel Pharmaceuticals plc - American Depositary Shares each representing one Or", direction: "up", last: 6.18, symbol: "AVDL", totalVolume: 896741},
 {change: 0.06891271056661565, description: "Seres Therapeutics, Inc. - Common Stock", direction: "up", last: 6.98, symbol: "MCRB", totalVolume: 269033}
]
 */
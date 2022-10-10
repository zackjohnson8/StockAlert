//
// Created by Zachary Johnson on 10/10/22.
//

import Foundation
import SwiftUI

struct FilterDirectionButton: View {
  @ObservedObject var filterDirectionModel: FilterDirectionButtonModel

  var body: some View {
    Button(filterDirectionModel.direction.rawValue, action: (
        {
          if (filterDirectionModel.direction == FilterDirection.up) {
            filterDirectionModel.direction = FilterDirection.down
          } else {
            filterDirectionModel.direction = FilterDirection.up
          }
        }))
  }
}
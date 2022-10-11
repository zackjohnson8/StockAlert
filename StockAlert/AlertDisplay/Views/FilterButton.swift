//
// Created by Zachary Johnson on 10/10/22.
//

import Foundation
import SwiftUI

struct FilterButton: View {
  @ObservedObject var filterButtonModel: FilterButtonModel

  var body: some View {
    Button(action: {
      filterButtonModel.isSelected = !filterButtonModel.isSelected
    }) {
      filterButtonModel.image
    }
  }
}
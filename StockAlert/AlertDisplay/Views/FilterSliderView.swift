//
// Created by Zachary Johnson on 10/10/22.
//

import Foundation
import SwiftUI

struct FilterSliderView: View {
  @ObservedObject var filterSliderModel: FilterSliderModel

  var body: some View {
    Slider(value: $filterSliderModel.initialValue,
        in: 0...filterSliderModel.value,
        onEditingChanged: { editing in
          filterSliderModel.isEditing = editing
        })
  }
}
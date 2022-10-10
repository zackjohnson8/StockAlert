//
// Created by Zachary Johnson on 9/26/22.
//

import Foundation
import SwiftUI

struct FilterSelectionView: View {
  @State var selected = true

  @ObservedObject var filterDirectionModel =
      FilterDirectionButtonModel(direction: .up, isSelected: false)

  @ObservedObject var filterValueModel =
      FilterSliderModel(initialValue: 2500.0, value: 5000.0)

  @ObservedObject var filterVolumeModel =
      FilterSliderModel(initialValue: 500000000.0, value: 1000000000.0)

  var body: some View {
    if (selected) {
      HStack {
        Spacer()
        VStack(alignment: .leading) {
          HStack {
            FilterTextView(
                filterTextModel:
                FilterTextModel(text: "Direction")
            )
            FilterDirectionButton(
                filterDirectionModel: filterDirectionModel
            )
          }
          HStack {
            FilterTextView(
                filterTextModel: FilterTextModel(text: "Value")
            )
            // TODO: Implement a range slider
            FilterSliderView(filterSliderModel: filterValueModel)
            FilterTextView(
                filterTextModel: FilterTextModel(
                    text: "\(Int(filterValueModel.initialValue))"
                )
            )
          }
          HStack {
            FilterTextView(filterTextModel: FilterTextModel(text: "Volume"))
            // TODO: Implement a range slider
            FilterSliderView(filterSliderModel: filterVolumeModel)
            FilterTextView(
                filterTextModel: FilterTextModel(
                    text: "\(Int(filterVolumeModel.initialValue))"
                )
            )
          }
        }
        Spacer()
      }
    }
  }
}

struct FilterView: View {
  @ObservedObject var filterButtonModel =
      FilterButtonModel(
          image: Image(systemName: "line.horizontal.3.decrease"),
          isSelected: false
      )

  var body: some View {
    VStack {
      HStack(alignment: .bottom) {
        FilterButton(filterButtonModel: filterButtonModel)
            .frame(maxWidth: .infinity, alignment: .trailing)
        Spacer()
        Spacer()
      }
      if (filterButtonModel.isSelected) {
        FilterSelectionView()
      }
    }
  }
}

struct FilterView_Previews: PreviewProvider {
  static var previews: some View {
    FilterView()
  }
}

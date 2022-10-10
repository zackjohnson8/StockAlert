//
// Created by Zachary Johnson on 10/10/22.
//

import Foundation

class FilterSliderModel: ObservableObject {
  @Published var initialValue: Double
  @Published var value: Double
  @Published var isEditing: Bool

  init(
      initialValue: Double = 0.0,
      value: Double = 0.0,
      isEditing: Bool = false
  ) {
    self.initialValue = initialValue
    self.value = value
    self.isEditing = isEditing
  }
}

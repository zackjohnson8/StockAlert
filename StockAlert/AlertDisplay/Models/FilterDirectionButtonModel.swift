//
// Created by Zachary Johnson on 10/10/22.
//

import Foundation

class FilterDirectionButtonModel: ObservableObject {
  @Published var direction: FilterDirection
  @Published var isSelected: Bool

  init(direction: FilterDirection = .up, isSelected: Bool = false) {
    self.direction = direction
    self.isSelected = isSelected
  }
}

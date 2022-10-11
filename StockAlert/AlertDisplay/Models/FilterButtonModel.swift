//
// Created by Zachary Johnson on 10/10/22.
//

import Foundation
import SwiftUI

class FilterButtonModel: ObservableObject {
  @Published var image: Image
  @Published var isSelected: Bool

  init(image: Image, isSelected: Bool = false) {
    self.image = image
    self.isSelected = isSelected
  }
}
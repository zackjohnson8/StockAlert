//
// Created by Zachary Johnson on 10/10/22.
//

import Foundation

class FilterTextModel: ObservableObject {
  @Published var text: String

  init(text: String = "") {
    self.text = text
  }
}
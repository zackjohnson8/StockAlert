//
// Created by Zachary Johnson on 10/10/22.
//

import Foundation
import SwiftUI

struct FilterTextView: View {
  @ObservedObject var filterTextModel: FilterTextModel

  var body: some View {
    Text(filterTextModel.text).font(.subheadline).foregroundColor(Color(.gray))
  }
}
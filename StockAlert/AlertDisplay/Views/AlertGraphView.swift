//
// Created by Zachary Johnson on 9/26/22.
//

import Foundation
import SwiftUI

struct AlertGraphView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Text("Stock Graph")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .top)
                    .border(.black, width: 1)
            Spacer()
        }

    }
}

struct AlertGraphView_Previews: PreviewProvider {
    static var previews: some View {
        AlertGraphView()
    }
}

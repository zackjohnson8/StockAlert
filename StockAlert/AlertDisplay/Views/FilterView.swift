//
// Created by Zachary Johnson on 9/26/22.
//

import Foundation
import SwiftUI

struct FilterView: View {
    @State var selected = false
    var body: some View {
        VStack {
            HStack(alignment: .bottom) {
                Button(action: {
                    selected = !selected
                }, label: {
                    Image(systemName: "line.horizontal.3.decrease")
                            .font(.title)
                            .foregroundColor(Color(.gray))
                }).frame(maxWidth: .infinity, alignment: .trailing)
                Spacer()
                Spacer()
            }
            if(selected) {
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

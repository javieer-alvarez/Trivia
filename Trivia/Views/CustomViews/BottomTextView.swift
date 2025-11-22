//
//  BottomTextView.swift
//  Code History
//
//  Created by Javier Ignacio Alvarez Izaguirre on 20/8/24.
//

import Foundation
import SwiftUI

struct BottomTextView: View{
    var str : String
    var body: some View{
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }.background(GameColor.accent)
    }
}

struct BottomTextView_Preview : PreviewProvider{
    static var previews: some View {
            BottomTextView(str: "Test")
        }
}

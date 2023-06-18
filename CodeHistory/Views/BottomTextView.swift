//
//  BottomTextView.swift
//  CodeHistory
//
//  Created by Balázs Képli on 14/06/2023.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }
        .background(GameColor.accent)
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "OK, let's GOOO!")
    }
}

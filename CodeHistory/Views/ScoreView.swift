//
//  ScoreView.swift
//  CodeHistory
//
//  Created by Balázs Képli on 18/06/2023.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score:")
                    .font(.body)
                    .fontWeight(.medium)
                Text("\(viewModel.percentage) %")
                    .fontWeight(.bold)
                    .font(.system(size: 50))
                    .padding()
                Spacer()
                VStack {
                    Text("\(viewModel.correctGuesses)✅")
                    Text("\(viewModel.incorrectGuesses) ❌")
                }
                .font(.system(size: 30))
                Spacer()
                NavigationLink {
                    GameView()
                } label: {
                    BottomTextView(str: "Re-take Quiz")
                }
            }
        }
        .foregroundColor(.white)
        .navigationBarHidden(true)
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}

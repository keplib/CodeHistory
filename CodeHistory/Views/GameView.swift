//
//  ContentView.swift
//  CodeHistory
//
//  Created by Balázs Képli on 07/04/2023.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    let accentColor = GameColor.accent
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
                    .padding()
            }
        }
        .foregroundColor(.white)
        .navigationBarHidden(true)
        .environmentObject(viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}

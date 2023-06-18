//
//  QuestionView.swift
//  CodeHistory
//
//  Created by Balázs Képli on 15/06/2023.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            HStack {
                ForEach(0..<question.possibleAnswer.count) { answerIndex in
                    Button {
                        print("Tapped on option with the text: \(question.possibleAnswer[answerIndex])")
                        viewModel.makeGuess(atIndex: answerIndex)
                    } label: {
                        ChoiceTextView(choiceText: question.possibleAnswer[answerIndex])
                            .background(viewModel.color(forOptionIndex: answerIndex))
                    }
                    .disabled(viewModel.guessWasMade)
                }
            }
            if viewModel.guessWasMade {
                Button {
                    viewModel.displayNextScreen()
                } label: {
                    BottomTextView(str: "Next")
                }

            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Question(questionText: "What was the first computer bug?", possibleAnswer: ["Ant", "Beetle", "Moth", "Fly"], correctAnswerIndex: 2))
    }
}

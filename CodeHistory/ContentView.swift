//
//  ContentView.swift
//  CodeHistory
//
//  Created by Balázs Képli on 07/04/2023.
//

import SwiftUI

struct ContentView: View {
    
    let question = Question(questionText: "What was the first computer bug?", possibleAnswer: ["Ant", "Beetle", "Moth", "Fly"], correctAnswerIndex: 2)
    
    @State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        ZStack {
            mainColor
                .ignoresSafeArea()
            VStack {
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                
                HStack {
                    ForEach(0..<question.possibleAnswer.count) { answerIndex in
                        Button {
                            print("Tapped on option with the text: \(question.possibleAnswer[answerIndex])")
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                        } label: {
                            ChoiceTextView(choiceText: question.possibleAnswer[answerIndex])
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

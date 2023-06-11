//
//  Game.swift
//  CodeHistory
//
//  Created by Balázs Képli on 11/06/2023.
//

import Foundation

struct Game {
    private(set) var currentQuestionIndex = 0
    private(set) var guesses = [Question:Int]()
    private(set) var isOver = false
    private let questions = Question.allQuestions.shuffled()
    
    var guessCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, guessedIndex) in guesses {
            if question.correctAnswerIndex == guessedIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    var numberOfQuestion: Int {
        return questions.count
    }
    
    var currentQuestion: Question {
        return questions[currentQuestionIndex]
    }
    
    mutating func makeGuessesForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    
    mutating func updateGameStatus() {
        if currentQuestionIndex < numberOfQuestion - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
}

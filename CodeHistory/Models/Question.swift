//
//  Question.swift
//  CodeHistory
//
//  Created by Balázs Képli on 11/04/2023.
//

import Foundation

struct Question : Hashable{
    let questionText: String
    let possibleAnswer: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "Who invented the World Wide Web?",
                 possibleAnswer: [
        "Steve Jobs",
        "Linus Torvalds",
        "Bill Gates",
        "Tim Berners-Lee"
        ],
        correctAnswerIndex: 3),
        Question(questionText: "What wasthe first OOP programming language?",
                 possibleAnswer: [
        "Simula",
        "Python",
        "Swift",
        "C"
        ],
        correctAnswerIndex: 0),
    ]
}

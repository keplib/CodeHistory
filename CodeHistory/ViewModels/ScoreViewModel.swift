//
//  ScoreViewModel.swift
//  CodeHistory
//
//  Created by Balázs Képli on 18/06/2023.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses)) 
    }
}

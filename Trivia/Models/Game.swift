//
//  Game.swift
//  Code History
//
//  Created by Javier Ignacio Alvarez Izaguirre on 12/8/24.
//

import Foundation

struct Game{
    private let questions = Question.allQuestions.shuffled()
    private(set) var guesses = [Question : Int]()
    private(set) var currentQuestionIndex : Int = 0
    private(set) var isOver : Bool = false
    
    var numberOfQuestions : Int {
        questions.count
    }
    
    var currentQuestion : Question{
        questions[currentQuestionIndex]
    }
    
    var guessCount : (correct: Int, incorrect: Int){
        
        var count: (correct: Int, incorrect: Int) = (0,0)
        
        for (question , guess) in guesses{
            if guess == question.correctAnswerIndex {
                count.correct += 1
            }
            else{
                count.incorrect += 1
            }
        }
        return count
    }
    
    mutating func makeGuessForCurrentQuestion(atIndex index : Int){
        guesses[currentQuestion] = index
    }
    
    mutating func updateGameStatus(){
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        }
        else{
            isOver = true
        }
    }
}

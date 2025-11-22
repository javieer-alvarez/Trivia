//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Javier Ignacio Alvarez Izaguirre on 23/8/24.
//

import Foundation

struct ScoreViewModel{
    let correctGuesses : Int
    let incorrectGuesses : Int
    
    var percentage: Int{
        return (correctGuesses*100/(correctGuesses+incorrectGuesses))
    }
}

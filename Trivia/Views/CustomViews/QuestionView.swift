//
//  QuestionView.swift
//  Code History
//
//  Created by Javier Ignacio Alvarez Izaguirre on 21/8/24.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel : GameViewModel
    let question : Question
    
    var body: some View {
        VStack{
            Text(question.question).font(Font.custom("Times New Roman", size: 40))
                .multilineTextAlignment(.center)
                .lineLimit(5)
                .padding(EdgeInsets(top: 0, leading: 35, bottom: 150, trailing: 35))
            
            
            VStack{
                
                ForEach(0..<question.possibleAnswers.count) { answerIndex in
                    
                    
                    Button(action: {
                        print("\(question.possibleAnswers[answerIndex]) pressed")
                        viewModel.makeGuess(atIndex: answerIndex)
                    }, label: {
                        Text(question.possibleAnswers[answerIndex])
                            .frame(width: 300)
                            .background(viewModel.color(forOptionIndex: answerIndex))
                    })
                    .cornerRadius(12)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 18, trailing: 0))
                    .multilineTextAlignment(.center)
                    .tint(GameColor.accent)
                    .disabled(viewModel.guessWasMade)
                }
                
            }
            
            Spacer()
            if viewModel.guessWasMade{
                Button(action: {
                    viewModel.displayNextScreen()
                }, label: {
                    BottomTextView(str: "Next")
                })
            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    QuestionView(question: Game().currentQuestion).environmentObject(GameViewModel())
}

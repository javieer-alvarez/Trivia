//
//  ContentView.swift
//  Code History
//
//  Created by Javier Ignacio Alvarez Izaguirre on 27/6/24.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        
        NavigationStack {
            ZStack{
                GameColor.main.ignoresSafeArea()
                VStack {
                    Text(viewModel.questionProgressText)
                        .font(
                            .callout)
                        .padding(EdgeInsets(top: 25, leading: 0, bottom: 70, trailing: 0))
                    
                    QuestionView(question: viewModel.currentQuestion)
                }
                .foregroundColor(.white)
                .navigationBarBackButtonHidden(true)
                .environmentObject(viewModel)
            }
            .background(
                NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)),
                               isActive: .constant(viewModel.gameIsOver),
                               label: { EmptyView() })
            )
        }
    }
    
    
}



#Preview {
    GameView()
}

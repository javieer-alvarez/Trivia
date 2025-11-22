//
//  ScoreView.swift
//  Code History
//
//  Created by Javier Ignacio Alvarez Izaguirre on 23/8/24.
//

import SwiftUI

struct ScoreView: View {
    let viewModel : ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack{
                Spacer()
                Text("Final score:")
                    .padding()
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                    .bold()
                Spacer()
                VStack{
                    Text("\(viewModel.correctGuesses) ✅")
                    Text("\(viewModel.incorrectGuesses) ❌")
                }.font(.system(size: 30))
                Spacer()
                NavigationLink(destination: GameView(), label: {BottomTextView(str: "Re-Take")})
            }
            .foregroundColor(.white)
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    ScoreView(viewModel: ScoreViewModel(correctGuesses: 7, incorrectGuesses: 3))
}

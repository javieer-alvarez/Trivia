//
//  WelcomeView.swift
//  Code History
//
//  Created by Javier Ignacio Alvarez Izaguirre on 20/8/24.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select the correct answers to the following questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomTextView(str: "Okay, let's Go!")
                        })
                }
                .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    WelcomeView()
}

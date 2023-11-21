//
//  QuizView.swift
//  Quiz
//
//  Created by Apple - 1 on 18/12/22.
//

import SwiftUI

struct QuizView: View {
    
    @EnvironmentObject var quizManager: QuizManager
    
    var body: some View {
        if quizManager.reachedEnd {
            VStack(spacing: 20) {
                Text("Trivia Game")
                    .lilacTitle()
                Text("Congratulations, You completed the game !...")
                Text("Your Scored \(quizManager.score) out of \(quizManager.length)")
                
                Button(action: {
                    Task.init {
                        await quizManager.fetchQuiz()
                    }
                }, label: {
                    NextButton(nexttext: "Play again")
                })
            }
            .foregroundColor(Color("AccentColor"))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BgColor"))
        }
        else {
            QuestionView()
                .environmentObject(quizManager)
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
            .environmentObject(QuizManager())
    }
}

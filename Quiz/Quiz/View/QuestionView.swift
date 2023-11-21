//
//  QuestionView.swift
//  Quiz
//
//  Created by Apple - 1 on 18/12/22.
//

import SwiftUI

struct QuestionView: View {
    
    @EnvironmentObject var quizManager: QuizManager
    
    var body: some View {
        VStack(spacing: 25) {
            HStack {
                Text("Quiz Game")
                    .lilacTitle()
                Spacer()
                Text("\(quizManager.index + 1) Out of \(quizManager.length)")
                    .foregroundColor(Color("AccentColor"))
                    .font(.title3)
                    .fontWeight(.heavy)
            }
            ProgressBar(progressBar: quizManager.progress)
            
            VStack(alignment: .leading, spacing: 25) {
                Text(quizManager.question)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                ForEach(quizManager.answerChoices, id: \.id) { answer in
                    AnswerRow(answer: answer)
                        .environmentObject(quizManager)
                }
            }
            
            Button(action: {
                quizManager.goToNextQuestion()
            }, label: {
                NextButton(nexttext: "Next")
            })
                .disabled(!quizManager.answerSelected)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .navigationBarHidden(true)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .environmentObject(QuizManager())
    }
}

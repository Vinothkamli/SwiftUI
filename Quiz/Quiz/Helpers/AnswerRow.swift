//
//  AnswerRow.swift
//  Quiz
//
//  Created by Apple - 1 on 18/12/22.
//

import SwiftUI

struct AnswerRow: View {
    
    @EnvironmentObject var quizManager: QuizManager
    var answer: Answer
    @State var isSelected = false
    var green: Color = Color.green
    var red: Color = Color.red
    
    var body: some View {
        HStack {
            Image(systemName: "circle.fill")
                .font(.caption)
            Text(answer.text)
                .bold()
            
            if isSelected {
                Spacer()
                Image(systemName: answer.isCorrecr ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundColor(answer.isCorrecr ? green : red)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(quizManager.answerSelected ? (isSelected ? Color("AccentColor") : .gray) : Color("AccentColor"))
        .background(.white)
        .cornerRadius(10)
        .shadow(color: isSelected ? (answer.isCorrecr ? green : red) : .gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
            if !quizManager.answerSelected {
                isSelected = true
                quizManager.selectedAnswer(answer: answer)
            }
            isSelected = true
        }
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(answer: Answer(text: "Single", isCorrecr: false))
            .environmentObject(QuizManager())
    }
}

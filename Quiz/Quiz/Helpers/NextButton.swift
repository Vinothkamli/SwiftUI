//
//  NextButton.swift
//  Quiz
//
//  Created by Apple - 1 on 18/12/22.
//

import SwiftUI

struct NextButton: View {
    @EnvironmentObject var quizManager: QuizManager
    var nexttext: String
    var previousText: String = "Previous"
    var background: Color = Color("AccentColor")
    var body: some View {
        HStack {
            Text(nexttext)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(quizManager.answerSelected ? background : .gray)
                .cornerRadius(30)
                .shadow(radius: 10)
        }
    }
}

struct NextButton_Previews: PreviewProvider {
    static var previews: some View {
        NextButton(nexttext: "Next")
            .environmentObject(QuizManager())
    }
}

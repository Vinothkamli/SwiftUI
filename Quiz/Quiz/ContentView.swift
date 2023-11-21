//
//  ContentView.swift
//  Quiz
//
//  Created by Apple - 1 on 18/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var quizManager = QuizManager()
    var background: Color = Color("BgColor")
    var goText: String = "Let's go"
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    Text("Technical Quiz")
                        .lilacTitle()
                        .foregroundColor(Color("AccentColor"))
                    Text("Are you test out of your technical skills?")
                        .foregroundColor(Color("AccentColor"))
                    NavigationLink(destination: {
                        QuizView()
                            .environmentObject(quizManager)
                    }, label: {
                        GoButton()
                    })
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
        .background(background)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(QuizManager())
    }
}

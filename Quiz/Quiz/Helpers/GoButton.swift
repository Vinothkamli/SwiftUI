//
//  GoButton.swift
//  Quiz
//
//  Created by Apple - 1 on 18/12/22.
//

import SwiftUI

struct GoButton: View {
    
    var background: Color = Color("BgColor")
    var goText: String = "Let's go"
    
    var body: some View {
        Text(goText)
            .foregroundColor(Color("BgColor"))
            .padding()
            .padding(.horizontal)
            .background(Color("AccentColor"))
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

struct GoButton_Previews: PreviewProvider {
    static var previews: some View {
        GoButton()
    }
}

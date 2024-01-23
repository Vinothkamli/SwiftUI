//
//  OnBoardingBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 22/12/23.
//

import SwiftUI

struct OnBoardingBootCamp: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            //            RadialGradient(colors: [Color.red, Color.green, Color.pink, Color.gray], center: .center, startRadius: 5, endRadius: 700)
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.gray]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                if currentUserSignedIn {
                    Text("Profile View")
                    
                } else {
                    OnboardingView()
                }
            }
            .foregroundColor(.white).bold()
        }
    }
}

#Preview {
    OnBoardingBootCamp()
}

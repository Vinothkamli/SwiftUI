//
//  SplashScreen.swift
//  ZumBox
//
//  Created by TechnoTackle on 19/12/23.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        VStack {
            Image("Logo")
                .resizable().scaledToFit()
            HStack {
                Text("Welcome to")
                    .foregroundStyle(Color.blue)
                    .font(.system(size: 18))
                    .bold()
                Text("VAV Vlogs")
                    .bold()
                    .font(.system(size: 18)).italic()
                    .foregroundStyle(.linearGradient(Gradient(colors: [Color.blue]), startPoint: .leading, endPoint: .trailing))
            }
        }
        
    }
}

#Preview {
    SplashScreen()
}

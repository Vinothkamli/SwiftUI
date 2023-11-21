//
//  FunctionsBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 26/08/23.
//

import SwiftUI

struct FunctionsBootCamp: View {
    
    @State var title: String = "Title"
    @State var bgColor: Color = Color.yellow
    
    var body: some View {
        ZStack {
            //Background
            bgColor.ignoresSafeArea()
            
            //Content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
            
            Button {
                buttonPressed(color: .purple)
            } label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
    }
    
    func buttonPressed(color: Color) {
        title = "Change New Title"
        bgColor = color
    }
}

struct FunctionsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FunctionsBootCamp()
    }
}

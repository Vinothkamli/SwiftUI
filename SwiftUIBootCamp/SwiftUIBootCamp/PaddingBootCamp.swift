//
//  PaddingBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 20/08/23.
//

import SwiftUI

struct PaddingBootCamp: View {
    var body: some View {
        VStack(spacing: 20) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    //            .frame(width: 150, height: 100)
    //            .background(Color.red)
    //            .padding(.all, 20)
    //            .padding(.leading, 0)
    //            .background(Color.yellow)
                .font(.title)
                .foregroundColor(.black)
            Text("With over 5,000 symbols, SF Symbols is a library of iconography designed to integrate seamlessly with San Francisco, the system font for Apple platforms.")
                .foregroundColor(.black)
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(8)
                .shadow(color: Color.gray, radius: 10, x: 0, y: 0)
        )
        .padding(.horizontal, 10)
    }
}

struct PaddingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootCamp()
    }
}

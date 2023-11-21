//
//  ImageBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 20/08/23.
//

import SwiftUI

struct ImageBootCamp: View {
    var body: some View {
        VStack {
//            Image("Love")
            
//                .resizable()
            Rectangle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color.red, Color.clear]), startPoint: .top, endPoint: .bottom)
                )
            
            //            .aspectRatio(contentMode: .fit)
//                .scaledToFill()
//                .frame(width: .infinity, height: .infinity)
            //            .clipped()
            //            .cornerRadius(125)
//                .clipShape(
                    //                Circle()
                    //                RoundedRectangle(cornerRadius: 20.0)
//                    Ellipse()
//                )
//                .shadow(color: .black.opacity(0.3), radius: 10, x: 10, y: 10)
//                .mask(
//                    LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .bottom, endPoint: .top)
//                )
//                .overlay(
//                Text("ahckhkgfkhsdgfhbskfhgsfkbfkjsd")
//                    .padding(.top, 200)
//                )
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootCamp()
    }
}

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
                                Image("Love")
                    
                                    .resizable()
                    
                    
                    
//                                .aspectRatio(contentMode: .fit)
//                                    .scaledToFill()
//                                    .frame(width: .infinity, height: .infinity)
//                                .clipped()
//                                .cornerRadius(125)
//                                    .clipShape(
//                                    Circle()
//                                    RoundedRectangle(cornerRadius: 20.0)
//                                        Ellipse()
//                                    )
//                                    .shadow(color: .black.opacity(0.3), radius: 10, x: 10, y: 10)
//                                    .mask(
//                                        LinearGradient(gradient: Gradient(colors: [.clear, .green, ]), startPoint: .bottom, endPoint: .top)
//                                    )
                                    .overlay(
                                    Text("Hello World")
                                        .padding(.top, 200)
                                    )
                }

    }
}

struct ImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootCamp()
    }
}

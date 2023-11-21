//
//  BackgroundAndOverlayBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 20/08/23.
//

import SwiftUI

struct BackgroundAndOverlayBootCamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
                //                Color.green
//                LinearGradient(gradient: Gradient(colors: [Color.green, Color.red]), startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(
//                        Color.yellow
//                        LinearGradient(gradient: Gradient(colors: [Color.green, Color.red]), startPoint: .leading, endPoint: .trailing)
//                    )
//                    .frame(width: 100, height: 100)
//            )
//            .background(
//                Circle()
//                    .fill(
//                        Color.orange
//                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.green]), startPoint: .leading, endPoint: .trailing)
//                    )
//                    .frame(width: 150, height: 150)
//            )
        
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 150, height: 150)
//            .overlay(
//                Text("20")
//                    .font(.headline)
//                    .foregroundColor(.white)
//                    .fontWeight(.black)
//            )
//            .background(
//                Circle()
//                    .fill(Color.green)
//                    .frame(width: 160, height: 160)
//            )
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 50, height: 50), alignment: .topLeading
//            )
//
//            .background(
//                Rectangle()
//                    .fill(Color("PrimaryColor"))
//                    .frame(width: 150.0, height: 150), alignment: .bottomTrailing
//            )
        
        Image(systemName: "heart.fill")
            .font(.largeTitle)
            .foregroundColor(.white)
            .background(
            Circle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color.green, Color.orange, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .frame(width: 100, height: 100)
                .shadow(color: .gray, radius: 10, x: 0.0, y: 8)
                .overlay(
                    Circle()
                        .fill(Color.primary)
                        .frame(width: 30, height: 30)
                        .overlay(
                        Text("20")
//                            .font(.caption)
                            .font(.system(size: 12)).bold()
                            .foregroundColor(Color.white)
                        )
                        .shadow(color: .gray, radius: 10, x: -20, y: 0)
                    , alignment: .bottomTrailing
                )
            )
    }
}

struct BackgroundAndOverlayBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootCamp()
    }
}

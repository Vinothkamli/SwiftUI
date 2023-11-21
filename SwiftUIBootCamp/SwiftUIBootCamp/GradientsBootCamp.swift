//
//  GradientsBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 20/08/23.
//

import SwiftUI

struct GradientsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(
//                Color.pink
//                LinearGradient(gradient: Gradient(colors: [Color.red, Color.green, Color.yellow, Color.blue, Color.black]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.gray, Color.green, Color.yellow]),
//                    center: .bottomLeading,
//                    startRadius: 0.5,
//                    endRadius: 150
//                )
                AngularGradient(gradient: Gradient(
                    colors: [Color.red, Color.green, Color.yellow]),
                                center: .topLeading,
                                angle: .degrees(190 + -50)
                )
                )
            .shadow(color: .red.opacity(0.4), radius: 10, x: -20, y: 30)
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootCamp()
    }
}

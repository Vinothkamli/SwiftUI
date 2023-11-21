//
//  AnimationCurves.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 26/08/23.
//

import SwiftUI

struct AnimationTimingBootCamp: View {
    
    @State var isANimation: Bool = false
    @State var timing: Double = 10.0
    
    var body: some View {
        VStack {
            
            Button("Presss Animation") {
                isANimation.toggle()
            }
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: isANimation ? 350 : 50, height: 100)
                    .animation(Animation.spring(
                        response: 1.0,
                        dampingFraction: 0.5,
                        blendDuration: 1.0)
                    )
//                    .animation(Animation.linear(duration: timing)
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isANimation ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isANimation ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isANimation ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing))
        }
    }
}

struct AnimationCurves_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootCamp()
    }
}

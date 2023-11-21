//
//  AddingAnimationBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 26/08/23.
//

import SwiftUI

struct AddingAnimationBootCamp: View {
    
    @State var isAnimation: Bool = false
    var body: some View {
        VStack {
            Button {
                withAnimation(.easeIn.delay(0.2).repeatCount(7)) {
                    isAnimation.toggle()
                }
            } label: {
                Text("Press: \(isAnimation.description)")
                    .font(.title)
                    .foregroundColor(.black)
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimation ? 50 : 25)
                .fill(isAnimation ? .green : .red)
                .frame(width: isAnimation ? 100 : 300, height: isAnimation ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimation ? 360 : 0))
                .offset(y: isAnimation ? 300 : 0)
            
            Spacer()

        }
    }
}

struct AddingAnimationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AddingAnimationBootCamp()
    }
}

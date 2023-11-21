//
//  TransistionBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 26/08/23.
//

import SwiftUI

struct TransistionBootCamp: View {
    @State var showView: Bool = false
    var body: some View {
        
        ZStack(alignment: .bottom) {
            VStack {
                Button("Press 😍") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                Rectangle()
                    .frame(height: UIScreen.main.bounds.height * 0.3)
//                    .transition(AnyTransition.opacity.animation(.spring()))
                    .transition(.asymmetric(
                        insertion: .move(edge: .top),
                        removal: .move(edge: .leading))
                    )
//                    .animation(.spring(dampingFraction: 0.5, blendDuration: 1.0))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransistionBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TransistionBootCamp()
    }
}

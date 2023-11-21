//
//  StepperBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 03/09/23.
//

import SwiftUI

struct StepperBootCamp: View {
    
    @State private var stepperCount: Int = 10
    @State private var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Text("Your Age: \(stepperCount)")
            
            Stepper("Set Age", value: $stepperCount)
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100 + widthIncrement, height: 60)
            
            Stepper("Stepper 2") {
//                widthIncrement += 10
                widthIncrement(setWidth: 10)
            } onDecrement: {
//                widthIncrement -= 10
                widthIncrement(setWidth: -10)
            }
        }
        .padding(20)
    }
    
    func widthIncrement(setWidth: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += setWidth
        }
    }
}

struct StepperBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootCamp()
    }
}

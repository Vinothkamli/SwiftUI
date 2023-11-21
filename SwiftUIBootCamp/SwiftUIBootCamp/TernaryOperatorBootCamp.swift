//
//  TernaryOperatorBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 26/08/23.
//

import SwiftUI

struct TernaryOperatorBootCamp: View {
    
    @State var startingStage: Bool = false
    var body: some View {
        VStack {
            
            Text("Rectangle: \(startingStage.description)")
            Text(startingStage ? "Starting Stage" : "Ending Stage")
            
            Button("Press") {
                startingStage.toggle()
            }
            .foregroundColor(.white)
            .padding()
            .background(.black)
            .cornerRadius(10)
            
            RoundedRectangle(cornerRadius: startingStage ? 20 : 10)
                .fill(startingStage ? .green : .red)
                .frame(width: startingStage ? 250 : 150, height: startingStage ? 150 : 75)
        }
    }
}

struct TernaryOperatorBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperatorBootCamp()
    }
}

//
//  ColorsBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 20/08/23.
//

import SwiftUI

struct ColorsBootCamp: View {
    @State var count: Int = 0
    
    var body: some View {
        RoundedRectangle(cornerRadius:20)
            .fill(
//                Color.primary
//                Color(UIColor.opaqueSeparator)
                Color("PrimaryColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(color: .primary, radius: 10)
            .shadow(color: Color(.gray).opacity(0.7), radius: 8, x: -10, y: 10)
        
            .onTapGesture {
                count += 1
                print("View Tapped \(count) times")
            }
            
        
    }
}

struct ColorsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootCamp()
    }
}

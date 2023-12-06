//
//  ReverseString.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 06/12/23.
//

import SwiftUI

struct ReverseString: View {
    
    @State var name: String = "Kamli"
    @State var nameReverse: String = ""

    var body: some View {
        Text("Original Name: \(name)")
        Text("Revrse Name: \(nameReverse)")
            .onAppear() {
//                nameReverse = String(name.reversed())
                stringReverse()
            }
    }
    
    func stringReverse() {
        for char in name {
            nameReverse = String(char) + nameReverse
        }
        
    }
}

#Preview {
    ReverseString()
}

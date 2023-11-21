//
//  ToggleBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 03/09/23.
//

import SwiftUI

struct ToggleBootCamp: View {
    
    @State var isToggle: Bool = false
    @State var vegSwitch: Bool = false
    
    var body: some View {
        VStack {
            Text(isToggle ? "Online" : "Offline")
            
            Toggle(isOn: $isToggle) {
                Text("Chat Status")
            }
            .toggleStyle(SwitchToggleStyle(tint: .green))
            
            Spacer()
        }
        
        .padding(.horizontal)
    }
}

struct ToggleBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootCamp()
    }
}

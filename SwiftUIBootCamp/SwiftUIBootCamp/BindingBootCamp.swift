//
//  BindingBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 26/08/23.
//

import SwiftUI

struct BindingBootCamp: View {
    
    @State var color: Color = Color.red
    @State var title: String = ""
    
    var body: some View {
        ZStack {
            color.ignoresSafeArea()
            VStack {
                Text(title)
                    .font(.headline)
                ButtonView(color: $color, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var color: Color
    @State var buttonColor: Color = Color.purple
    @Binding var title: String
    @State var clickSwitch: Bool = false
    
    var body: some View {
        Button {
            clickSwitch.toggle()
            
            color = clickSwitch ? .gray : .red
            buttonColor = clickSwitch ? buttonColor : Color.green
            title = clickSwitch ? "New title..." : ""
        } label: {
            Text(clickSwitch ? "switch to normal" : "Press")
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .background(clickSwitch ? buttonColor : Color.green)
                .cornerRadius(10)
        }
//        .animation(Animation.easeInOut)
    }
}

struct BindingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootCamp()
    }
}

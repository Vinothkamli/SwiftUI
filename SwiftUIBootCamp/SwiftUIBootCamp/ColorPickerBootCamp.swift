//
//  ColorPickerBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 03/09/23.
//

import SwiftUI

struct ColorPickerBootCamp: View {
    
    @State var bgcolor: Color = Color.yellow
    
    var body: some View {
        ZStack {
            bgcolor.ignoresSafeArea()
            
            VStack(spacing: 20) {
                ColorPicker("Select Background Color", selection: $bgcolor)
                    .padding(15)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .cornerRadius(20)
                    .padding(.horizontal)
                Text("Hello World")
                    .foregroundStyle(bgcolor)
                    .padding()
                    .background(.white)
                    .cornerRadius(100)
                    .shadow(color: Color.black, radius: 5)
                    
                Spacer()
            }
        }
    }
}

struct ColorPickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootCamp()
    }
}

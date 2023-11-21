//
//  ColorPickerBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 03/09/23.
//

import SwiftUI

struct ColorPickerBootCamp: View {
    
    @State var bgColor: Color = Color.yellow
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(bgColor)
                    .frame(width: 200, height: 200)
                
                ColorPicker("Select Color", selection: $bgColor)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal, 90)
            }
        }
    }
}

struct ColorPickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootCamp()
    }
}

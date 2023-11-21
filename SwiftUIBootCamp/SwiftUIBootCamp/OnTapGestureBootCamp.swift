//
//  OnTapGestureBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 21/11/23.
//

import SwiftUI

struct OnTapGestureBootCamp: View {
    @State var isSelected: Bool = false
    var body: some View {
        VStack(spacing: 30) {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 300, height: 200)
                .foregroundColor(isSelected ? .green : .red)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .foregroundStyle(.white)
                    .padding(20)
                    .background(.blue)
                    .cornerRadius(20)
            }
            
            
            Text("Tap Gesture")
                .foregroundStyle(.white)
                .padding(20)
                .background(.blue)
                .cornerRadius(20)
            
//                .onTapGesture {
//                    isSelected.toggle()
//                }
            
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
            
            Spacer()

        }
    }
}

#Preview {
    OnTapGestureBootCamp()
}

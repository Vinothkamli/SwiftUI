//
//  SliderBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 18/11/23.
//

import SwiftUI

struct SliderBootCamp: View {
    @State private var sliderValue: Double = 10
    
    @State private var color: Color = Color.red
    var body: some View {
        VStack {
            HStack {
                Text("Rating")
                Text(
                    String(format: "%.f", sliderValue)
                )
                .foregroundStyle(color)
            }
            
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 0...80)
//            Slider(value: $sliderValue, in: 0...80, step: 1.0)
            
            Slider(
                value: $sliderValue,
                in: 0...10, step: 1.0,
                onEditingChanged: { (_) in
                color = .green
            },
                minimumValueLabel:Text("1"),
                maximumValueLabel: Text("10"),
                label:  {
                    Text("Title")
                })

                .accentColor(.yellow)
        }
    }
}

#Preview {
    SliderBootCamp()
}

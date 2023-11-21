//
//  ShapesBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 19/08/23.
//

import SwiftUI

struct ShapesBootCamp: View {
    var body: some View {
        VStack{
            //        Circle()
            //        Ellipse()
            //        Capsule(style: .continuous)
            Rectangle()
            //        RoundedRectangle(cornerRadius: 15)
            //            .fill(Color.primary)
            //            .foregroundColor(.primary)
            //            .stroke(Color.red, style: StrokeStyle(lineWidth: 2, lineCap: .round, dash: [15]))
            //            .frame(height: 50)
            //            .padding(.horizontal, 20)
//                        .trim(from: 0.7, to: 1.0)
                .stroke(Color.green, style: StrokeStyle(lineWidth: 1, lineCap: .butt, dash: [20]))
//                        .stroke(Color.red,style: StrokeStyle(lineWidth: 2))
                .frame(height: 40)
            //            .frame(height: 80)
                .padding(.horizontal, 30)
            
            Button {
                
            } label: {
                Rectangle()
                    .stroke(Color.yellow, style: StrokeStyle(lineWidth: 1, lineCap: .round, dash: [20]))
                    .frame(width: .infinity, height: 40)
                    .padding(.horizontal)
            }
        }

    }
}

struct ShapesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootCamp()
    }
}

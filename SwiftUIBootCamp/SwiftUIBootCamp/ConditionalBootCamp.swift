//
//  ConditionalBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 26/08/23.
//

import SwiftUI

struct ConditionalBootCamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoding: Bool = false
    
    var body: some View {
        VStack {
            
            Text("Circle: \(showCircle.description)").bold()
                .font(.title)
            
            Button {
                showCircle.toggle()
            } label: {
                Text("Press")
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            }
            
            Text("Rectangle: \(showRectangle.description)").bold()
                .font(.title)

            Button("Rectangle") {
                showRectangle.toggle()
            }
            .foregroundColor(.white)
            .padding()
            .background(.red)
            .cornerRadius(10)
            
            Text("is Loading \(isLoding.description)").bold()
                .font(.title)
            
            Button("Loader") {
                isLoding.toggle()
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.orange)
            .cornerRadius(10)
            
//            if showCircle && showRectangle {
//                Ellipse()
//                    .frame(width: 200, height: 100)
//            } else if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            } else if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            } else {
//                RoundedRectangle(cornerRadius: 10)
//                    .frame(width: 200, height: 100)
//            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
//            if !showCircle && !showRectangle {
//                RoundedRectangle(cornerRadius: 10)
//                    .frame(width: 200, height: 100)
//            }
            
            if showCircle || showRectangle {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 200, height: 100)
            }
            
            if isLoding {
                ProgressView()
            }
        }
    }
}

struct ConditionalBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootCamp()
    }
}

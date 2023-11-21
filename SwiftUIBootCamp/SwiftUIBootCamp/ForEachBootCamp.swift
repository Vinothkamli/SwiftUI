//
//  ForEachBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 21/08/23.
//

import SwiftUI

struct ForEachBootCamp: View {
    
    let data: [String] = ["Hi", "Hello", "How are u"]
    let myString: String = "20"
    var body: some View {
        
//        VStack {
//            ForEach(0..<20) { index in
//                HStack {
//                    Circle()
//                        .fill(.red)
//                        .frame(width: 20, height: 20)
//                    Text("Helloooo \(index)")
//                }
//            }
//        }
            VStack(spacing: 20) {
                ForEach(Array(data.enumerated()), id: \.element) { index, data in
                    Text("\(data) : \(index)")
                }
                
                ScrollView(showsIndicators: false) {

                    ForEach(0..<21) { index in
                    Text("\(index)")
                        .padding()
                        .background(
                            Capsule()
                                .fill(
                                    .red
                                )
                        )
                }
            }
        }
    }
}

struct ForEachBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootCamp()
    }
}

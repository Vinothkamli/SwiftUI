//
//  SpacerBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 21/08/23.
//

import SwiftUI

struct SpacerBootCamp: View {
    var body: some View {
//        HStack(spacing: nil) {
//            Spacer()
//                .frame(height: 10)
//                .background(.green)
//            Rectangle()
//                .frame(width: 100, height: 100)
//
//            Spacer()
//                .frame(height: 10)
//                .background(.green)
//
//            Rectangle()
//                .frame(width: 100, height: 100)
//            Spacer()
//                .frame(height: 10)
//                .background(.green)
//
//            Rectangle()
//                .frame(width: 100, height: 100)
//            Spacer()
//                .frame(height: 10)
//                .background(.green)
//        }
//        .background(.red)
//        .padding(.horizontal)
//        .frame(height: 10)
//        .background(.pink)
        
        VStack {
            HStack {
                Image(systemName: "heart")
                    .background(
                        Circle()
                            .fill(Color.orange)
                            .shadow(radius: 10)
                            .frame(width: 40, height: 40)
                    )
                Spacer()
                Image(systemName: "person")
                    .background(
                        Circle()
                            .fill(Color.orange)
                            .shadow(radius: 10)
                            .frame(width: 40, height: 40)
                    )
                
            }
            .padding(.horizontal)
            Spacer()
        }
    }
}

struct SpacerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootCamp()
    }
}

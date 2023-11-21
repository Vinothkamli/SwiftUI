//
//  SafeAreaBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 21/08/23.
//

import SwiftUI

struct SafeAreaBootCamp: View {
    var body: some View {
//        VStack {
//            Text("Hello World!").bold()
//                .font(.largeTitle)
//            Spacer()
//            Text("Hello").bold()
//                .font(.title)
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(.gray)
        
        ScrollView(showsIndicators: false) {
            VStack {
                Text("Safe Area BootCamp").bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                ForEach(0..<20) { index in
                    Rectangle()
                        .fill(.primary)
                        .frame(width: 300, height: 150)
                        .shadow(color: .gray, radius: 10)
                        .cornerRadius(20)
                }
            }
        }
        .background(.red)
    }
}

struct SafeAreaBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootCamp()
    }
}

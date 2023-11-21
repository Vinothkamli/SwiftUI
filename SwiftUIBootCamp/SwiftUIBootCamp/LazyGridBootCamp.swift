//
//  LazyGridBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 21/08/23.
//

import SwiftUI

struct LazyGridBootCamp: View {
//    let columns: [GridItem] = [
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//    ]
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing:  nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
//    let columns: [GridItem] = [
//        GridItem(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil)
//    ]
    
    var body: some View {
        ScrollView {
//            Rectangle()
//                .frame(width: 300, height: 300)
//                .background(.green)
//
//            LazyVGrid(columns: columns) {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .frame(height: 150)
//                }
//            }
            
            Circle()
                .fill(.pink)
                .frame(width: 400, height: 400)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: nil,
                      pinnedViews: [.sectionHeaders],
                      content: {
                Section(header:
                            Text("Section 1")
                    .font(.title).bold()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(.green)
                    .padding(.horizontal)
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 100)
                    }
                }
                .padding(.horizontal)
                
                Section(header:
                            Text("Section 2")
                    .font(.title).bold()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(.orange)
                    .padding(.horizontal, 10)
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 100)
                    }
                }
            })
        }
    }
}

struct LazyGridBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridBootCamp()
    }
}

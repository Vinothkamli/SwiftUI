//
//  ScrollViewBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 21/08/23.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
        ScrollView() {
            LazyVStack {
                ForEach(0..<10){ index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack {
                            ForEach(0..<20) { index in
                                Circle()
                                    .fill(.red)
                                    .frame(width: 200, height: 200)
                                    .shadow(radius: 10)
                            }
                        }
                    })
                }
                .padding()
            }
        }
    }
}

struct ScrollViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootCamp()
    }
}

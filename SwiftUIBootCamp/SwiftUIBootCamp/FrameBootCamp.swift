//
//  FrameBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 20/08/23.
//

import SwiftUI

struct FrameBootCamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.yellow)
//            .frame(width: 200, height: 200, alignment: .leading)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .frame(height: 100, alignment: .bottom)
            .background(Color.yellow)
            .frame(width: 150, alignment: .trailing)
            .background(Color.green)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 400, alignment: .bottom)
            .background(Color.orange)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.purple)
        
    }
}

struct FrameBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootCamp()
    }
}

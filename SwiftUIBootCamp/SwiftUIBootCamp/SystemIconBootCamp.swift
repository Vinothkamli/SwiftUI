//
//  SystemIconBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 20/08/23.
//

import SwiftUI

struct SystemIconBootCamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFill()
//            .font(.title)
//            .font(.system(size: 100))
//            .foregroundColor(.red)
//            .frame(width: 250, height: 250)
//            .clipped()
    }
}

struct SystemIconBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SystemIconBootCamp()
    }
}

//
//  ExtractSubViewBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 26/08/23.
//

import SwiftUI

struct ExtractSubViewBootCamp: View {
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            //Content
            contentLayer 
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItemView(title: "Apple", count: 10, color: Color.red)
            MyItemView(title: "Orange", count: 20, color: Color.orange)
            MyItemView(title: "Pine Apple", count: 30, color: Color.yellow)
        }
    }
}

struct ExtractSubViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViewBootCamp()
    }
}

struct MyItemView: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

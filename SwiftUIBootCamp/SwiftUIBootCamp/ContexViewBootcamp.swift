//
//  ContexViewBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 02/11/23.
//

import SwiftUI

struct ContexViewBootcamp: View {
    
    @State var bgColor: Color = Color.blue
    
    var body: some View {
        VStack(alignment: .leading ,spacing: 10.0) {
            Image(systemName: "house")
            Text("SwiftUI Bootcamp")
            Text("How to use context menu")
        }
        .padding(20)
        .background(bgColor)
        .cornerRadius(15)
        .shadow(radius: 10)
        
        .contextMenu(ContextMenu(menuItems: {
            Button {
                bgColor = .red
            } label: {
                Label("Like", systemImage: "heart.fill")
            }

        }))
    }
}

#Preview {
    ContexViewBootcamp()
}

//
//  StatePropertyBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 22/08/23.
//

import SwiftUI

struct StatePropertyBootCamp: View {
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 1
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(myTitle).bold()
                    .font(.title)
                Text("Count \(count)").underline().bold()
                    .font(.headline)
                
                
                HStack(spacing: 15) {
                    Button("Button 1") {
                        backgroundColor = .red
                        myTitle = "Title 1 Changed"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .yellow
                        myTitle = "Title 2 Changed"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StatePropertyBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StatePropertyBootCamp()
    }
}

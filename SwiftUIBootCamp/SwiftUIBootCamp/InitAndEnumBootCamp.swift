//
//  InitAndEnumBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 21/08/23.
//

import SwiftUI

struct InitAndEnumBootCamp: View {
    
    let background: Color
    let count: Int
    let fruit: String
    
    init(count: Int, title: Fruits) {
        self.count = count
        
        if title == .apple {
            self.fruit = "Apple"
            self.background = .yellow
        } else if title == .apple {
            self.fruit = "grapees"
            self.background = .yellow
        } else {
            self.fruit = "Orange"
            self.background = .orange
        }
    }
    
    enum Fruits {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(count)")
                .font(.largeTitle).bold()
                .underline()
            Text(fruit)
                .font(.headline).bold()
        }
        .frame(width: 100, height: 100)
        .background(background)
        .cornerRadius(10)
    }
}

struct InitAndEnumBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitAndEnumBootCamp(count: 22, title: .orange)
            InitAndEnumBootCamp(count: 200, title: .apple)
        }
    }
}

//
//  AddingTextBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 19/08/23.
//

import SwiftUI

struct AddingTextBootCamp: View {
    
    @State var testing: Bool = true
    var body: some View {
        VStack {
            Text("hello, World! This is the swiftful thinking bootcamp i am really enjoying the course and learn lot.".capitalized)
//                        .font(.body)
            //            .fontWeight(.heavy)
            //            .bold()
            //            .underline()
            //            .underline(true, color: Color.red)
            //            .italic()
            //            .strikethrough()
            //            .strikethrough(true, color: Color.green)
            //            .font(.system(size: 24, weight: .heavy, design: .serif))
                .multilineTextAlignment(.trailing)
            //            .baselineOffset(-25)
            //            .kerning(20)
                .foregroundColor(.red)
                .frame(height: 200, alignment: .center)
                .minimumScaleFactor(0.1)
                .background(testing ? .green : .yellow)
                .baselineOffset(-20)
        }
    }
}

struct AddingTextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AddingTextBootCamp()
    }
}

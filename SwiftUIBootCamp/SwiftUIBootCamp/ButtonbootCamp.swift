//
//  ButtonbootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 22/08/23.
//

import SwiftUI

struct ButtonbootCamp: View {
    
   @State var title: String = "Title"
   @State var clickCount: Int = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
                .font(.largeTitle.bold())
            
            Button("Press Me!") {
                clickCount += 1
                self.title = "Button 1: Count: \(clickCount)"
            }
            
            Button {
                clickCount += 1
                self.title = "Button 2:  Count: \(clickCount)"
            } label: {
                Text("Button 2".uppercased())
                    .font(.caption)
                    .fontWeight(.semibold)
                    .tint(.black)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.yellow)
                            .frame(width: 100, height: 35)
                            .shadow(radius: 2)
                    )
            }
            
            Button {
                
                clickCount += 1
                self.title = "Button 3 Count: \(clickCount)"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 80, height: 80)
                    .shadow(radius: 10)
                
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            }
            
            Button {
                clickCount += 1
                self.title = "Button 4 Count: \(clickCount)"
            } label: {
                Text("Finish").bold()
                    .font(.title)
                    .foregroundColor(.primary)
                    .frame(width: 150, height: 50)
                    .background(
                        Capsule()
                            .stroke(Color.red, lineWidth: 2.0)
//                            .shadow(color: .pink, radius: 10, x: 6, y: 5)
                    )
            }
            
            Text("Text Click").bold()
                .font(.system(size: 20))
                .onTapGesture(count: 2) {
                    clickCount += 1
                    self.title = "Text 5: Count: \(clickCount)"
                }
        }
    }
}

struct ButtonbootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonbootCamp()
    }
}

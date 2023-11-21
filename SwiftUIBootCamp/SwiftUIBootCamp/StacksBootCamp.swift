//
//  StacksBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 20/08/23.
//

import SwiftUI

struct StacksBootCamp: View {
    //Vstack - Vertical
    //Hstack - Horizontal
    //Zstack - zIndex (back to front)
    var body: some View {
//        ZStack(alignment: .topTrailing, content: {
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 50, height: 50)
//
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 30, height: 30)
//        })
        
//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(Color.red)
//
//            VStack(alignment: .leading) {
//                Rectangle()
//                    .fill(Color.yellow)
//                    .frame(width: 100, height: 100)
//
//                Rectangle()
//                    .fill(Color.yellow)
//                    .frame(width: 100, height: 100)
//
//                HStack(alignment: .bottom) {
//                    Rectangle()
//                        .fill(Color.yellow)
//                    .frame(width: 100, height: 100)
//
//                    Rectangle()
//                        .fill(Color.yellow)
//                    .frame(width: 70, height: 70)
//
//                    Rectangle()
//                        .fill(Color.yellow)
//                    .frame(width: 80, height: 80)
//                }
//                .background(Color.blue)
//            }
//            .background(Color.green)
//        }
        
//        VStack(alignment: .center, spacing: 10) {
//            Text("Items in your cart:")
//                .font(.headline)
//                .fontWeight(.semibold)
//
//            Text("20")
//                .font(.largeTitle)
//                .fontWeight(.light)
//                .underline(true, color: Color.red).bold()
//        }
        
        VStack(spacing: 50) {
            ZStack {
                Circle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 100)
                
                Text("10")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
            }
            
            Text("1").bold()
            
                .background(
                    Circle()
                        .fill(Color.yellow)
                        .frame(width: 100, height: 100)
                )
        }
    }
}

struct StacksBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootCamp()
    }
}

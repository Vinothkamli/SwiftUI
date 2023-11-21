//
//  SheetsBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 26/08/23.
//

import SwiftUI

struct SheetsBootCamp: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Show Sheet")
                    .font(.footnote)
                    .foregroundColor(.black)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
                
            })
            
//            .sheet(isPresented: $showSheet) {
//
//                //Do not add conditional logic
//                SecondScreen()
//            }
            
            .fullScreenCover(isPresented: $showSheet) {
                SecondScreen()
            }
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.green.edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "arrow.left")
                    .font(.title)
                    .foregroundColor(.black)
//                    .padding(10)
//                    .background(.black).cornerRadius(10)
            }
        }
    }
}

struct SheetsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootCamp()
//        SecondScreen()
    }
}

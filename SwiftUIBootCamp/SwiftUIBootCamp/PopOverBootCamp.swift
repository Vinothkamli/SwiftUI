//
//  PopOverBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 26/08/23.
//

// 1 - Sheets
// 2 - Animations
// 3 - transitions

import SwiftUI

struct PopOverBootCamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        
        ZStack {
            Color.orange.ignoresSafeArea()
            VStack {
                Button {
                    showSheet.toggle()
                } label: {
                    Text("Press me").bold()
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black).cornerRadius(10)
                }
                Spacer()
            }
            
            //Method - 1
//            .sheet(isPresented: $showSheet) {
//                NewScreen()
//            }
            
            //Method - 2
//            ZStack {
//                if showSheet {
//                    NewScreen(showSheet: $showSheet)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                        .padding(.top, 100)
//                }
//            }
//            .zIndex(5.0)
            
            //Method 3
            NewScreen(showSheet: $showSheet)
                .padding(.top, 100)
                .offset(y: showSheet ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var showSheet: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.green.ignoresSafeArea()
            
            Button {
//                presentationMode.wrappedValue.dismiss()
                showSheet.toggle()
            } label: {
                Image(systemName: "xmark")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
            }
        }
    }
}



struct PopOverBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PopOverBootCamp()
    }
}

//
//  OnAppearBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 18/11/23.
//

import SwiftUI

struct OnAppearBootCamp: View {
    
    @State var myText: String = "Staring Text"
    
    var body: some View {
        NavigationView {
            VStack {
                Text(myText)

                ScrollView {
                    
                    LazyVStack {
                        ForEach(0..<20, id: \.self) { _ in
                            RoundedRectangle(cornerRadius: 20)
                                .frame(height: 200)
                                .padding(10)
                        }
                    }
                      
                }
                
                .onAppear(perform: {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                        myText = "This Next Text After OnAppear"
                    }
                })
                
                .onDisappear(perform: {
                    myText = "This Ending Text"
                })
            }
        }
    }
}

#Preview {
    OnAppearBootCamp()
}

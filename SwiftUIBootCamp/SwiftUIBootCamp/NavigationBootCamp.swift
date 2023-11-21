//
//  NavigationBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 26/08/23.
//

import SwiftUI

struct NavigationBootCamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
                NavigationLink {
                    ScreenSecond()
                } label: {
                    Text("Second Screen")
                }

                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("Navigation Title")
    //        .navigationBarTitleDisplayMode(.inline)
    //        .navigationBarHidden(true)
            .navigationBarItems(leading: HStack {
                Image(systemName: "heart")
                Image(systemName: "person")
            },trailing: NavigationLink(destination: {
                SecondScreen()
            }, label: {
                Image(systemName: "car")
            })
            )
        }
        .navigationBarHidden(true)
    }
}

struct ScreenSecond: View {
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack() {
            VStack {
                VStack(spacing: 10) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(.black).cornerRadius(10)
                    }
                    
                    NavigationLink {
                        ThirdSecond()
                    } label: {
                        Text("Next SCreen")
                    }
                }
            }
        }
        .navigationBarHidden(true)
    }
}


struct ThirdSecond: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack() {
            
            // Your content here
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.black)
                        .cornerRadius(10)
                        .padding(.horizontal)
            }
        }
        .navigationBarHidden(true)
    }
}

struct FourthScreen: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack() {
            
            // Your content here
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.black)
                        .cornerRadius(10)
                        .padding(.horizontal)
            }
        }
        .navigationBarHidden(true)
    }
}


struct NavigationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBootCamp()
    }
}

//
//  TabViewBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 18/11/23.
//

import SwiftUI

struct TabViewBootCamp: View {
    @State var selectedIndex:  Int = 0
    
    let icons: [String] = [
        "heart", "house", "cart", "book"
    ]
    var body: some View {
        
        TabView {
            ForEach(icons, id:\.self) { name in
                Image(systemName: name)
                    .resizable()
                    .scaledToFit()
                    .padding(20)
            }

        }
        .tabViewStyle(.page)
        .frame(height: 300)
        .background(
            RadialGradient(colors: [Color.yellow, Color.green, Color.red], center: .center, startRadius: 5, endRadius: 100))
        .cornerRadius(20)
        .padding(.horizontal, 20)
  
        
//        TabView(selection: $selectedIndex) {
//            
//            HomeView(selectedIndex: $selectedIndex)
//                .tabItem {
//                    Image(systemName: "house")
//                    Text("Home")
//                }
//                .tag(0)
//            
//            MenuView()
//                .tabItem {
//                    Image(systemName: "book")
//                    Text("Menu")
//                }
//                .tag(1)
//
//            
//            CartView()
//                .tabItem {
//                Image(systemName: "cart")
//                Text("Cart")
//            }
//                .tag(2)
//        }
    }
}

#Preview {
    TabViewBootCamp()
}

struct HomeView: View {
    
    @Binding var selectedIndex: Int
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                Text("Home")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                Button {
                    selectedIndex = 2
                } label: {
                    Text("Go To Profile")
                        .foregroundStyle(.black)
                        .padding(20)
                        .background(.white)
                        .cornerRadius(10)
                    
                }

            }
        }
    }
}

struct MenuView: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            Text("Menu")
                .font(.largeTitle)
                .foregroundStyle(.white)
        }
    }
}


struct CartView: View {
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            
            Text("Cart")
                .font(.largeTitle)
                .foregroundStyle(.white)
        }
    }
}

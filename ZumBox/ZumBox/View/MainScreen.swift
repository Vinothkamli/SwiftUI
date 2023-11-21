//
//  MainScreen.swift
//  ZumBox
//
//  Created by apple on 09/01/23.
//

import SwiftUI

struct MainScreen: View {
    
    //Current Tab
    @State var currentTab: Tab = .Home
    
    //Hinding Tab Bar...
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        //TabView
        VStack(spacing: 0) {
            TabView(selection: $currentTab) {
                Text("Home")
                    .tag(Tab.Home)
                Text("Menu")
                    .tag(Tab.Like)
                Text("Wallet")
                    .tag(Tab.Wallet)
                Text("Cart")
                    .tag(Tab.Cart)
                Text("Account")
                    .tag(Tab.Account)
                
            }
            
            HStack(spacing: 0) {
//                ForEach(Tab.allCases, id: \.self){ tab in
//                    Button(action: {
//                        
//                    }, label: {
//                        Image(tab.rawValue)
//                            .renderingMode(.template)
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 22, height: 22)
//                            .frame(maxWidth: .infinity)
//                            .foregroundColor(currentTab == tab ? Color.red : Color.black.opacity(0.3))
//                    })
//                }
            }
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}


enum Tab: String {
    case Home = "Home"
    case Like = "Menu"
    case Wallet = "Wallet"
    case Cart = "Cart"
    case Account = "Account"
    
}

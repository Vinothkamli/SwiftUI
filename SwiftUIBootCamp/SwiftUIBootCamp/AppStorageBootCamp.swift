//
//  AppStorageBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 22/12/23.
//

import SwiftUI

struct AppStorageBootCamp: View {
    
//   @State private var currentName: String?
    @AppStorage("Name") var currentName: String?
    @AppStorage("Name1") var currentName1: String?

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                Text(currentName ?? "Add Name here")
                
            
                
                Button(action: {
                    currentName = "Vinoth Kamli"
    //                UserDefaults.standard.setValue(currentName, forKey: "name")
                }, label: {
                    Text("Add Name")
                })
                
                
                Text(currentName1 ?? "Add Name here")

                Button(action: {
                    currentName1 = "Kamli"
    //                UserDefaults.standard.setValue(currentName, forKey: "name")
                }, label: {
                    Text("Add Name")
                })
                
                NavigationLink("Navigate Home", destination: HomeScreen())
                
    //            .onAppear() {
    //                currentName = UserDefaults.standard.string(forKey: "name")
    //            }

            }
        }
    }
}

struct HomeScreen: View {
    
    @AppStorage("Name") var Names: String?
    @AppStorage("Name1") var Names1: String?
    
    var body: some View {
        VStack {
            Text(Names ?? "")
            Text(Names1 ?? "")
        }
    }
}

#Preview {
    AppStorageBootCamp()
}

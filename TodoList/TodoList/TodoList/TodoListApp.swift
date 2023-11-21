//
//  TodoListApp.swift
//  TodoList
//
//  Created by Apple - 1 on 17/10/22.
//

import SwiftUI

@main
struct TodoListApp: App {
    
  @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
        ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}

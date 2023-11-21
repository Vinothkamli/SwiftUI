//
//  SafelyUnwarpBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 21/11/23.
//

import SwiftUI

struct SafelyUnwarpBootCamp: View {
    
    @State private var currentUserID: String? = nil
    @State private var displayText: String? = nil
    @State private var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Text("Here we are practicing safe coding")
                
                if let newText = displayText {
                    Text(newText)
                        .font(.headline)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .onAppear {
                loadData2()
            }
            .navigationTitle("Safe Coding")
        }
    }
    
    func loadData() {
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This new load data! and ur your ID \(userID)"
                isLoading = false
            }
        } else {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "Error! no userID"
                isLoading = false
            }
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error! no userID"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This new load data! and ur your ID \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    SafelyUnwarpBootCamp()
}

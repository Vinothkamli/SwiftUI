//
//  NoItemsView.swift
//  TodoList
//
//  Created by Apple - 1 on 21/10/22.
//

import SwiftUI

struct NoItemsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("There Are No Items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a productive person? I think you should click the add button of items to your todo")
                    .font(.footnote)
                NavigationLink(destination: {
                    AddView()
                }, label: {
                    Text("Add Something")
                        .foregroundColor(.primary)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                })
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NoItemsView()
                .navigationTitle("Title")
        }
    }
}

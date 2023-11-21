//
//  ListBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 27/08/23.
//

import SwiftUI

struct ListBootCamp: View {
    
    @State var fruits: [String] = ["Apple", "Orange", "PineApple"]
    @State var nonveg: [String] = ["Chicken", "Mutton", "Fish"]

    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: (\.self)) { index in
                        Text(index.uppercased() )
                    }
                    
//                    .onDelete { indexset in
//                        deleteItem(indexset: indexset)
//
//                    }
                    .onDelete(perform: deleteItem)
//                    .onMove { indices, newOffset in
//                        fruits.move(fromOffsets: indices, toOffset: newOffset)
//                    }
//                    .onMove(perform: moveItem(indices:newOffset:))
                    .onMove(perform: moveItem)
                    .listRowBackground(Color.yellow)
                    
                } header: {
                    HStack {
                        Text("Fruits")
                            .foregroundColor(.orange)
                        
                        Image(systemName: "flame.fill")
                            .foregroundColor(.orange)
                    }
                }
                
                Section {
                    ForEach(fruits, id: (\.self)) { index in
                        Text(index.uppercased() )
                    }
                } header: {
                    HStack {
                        Text("Vegetables")
                            .foregroundColor(.orange)
                        
                        Image(systemName: "flame.fill")
                            .foregroundColor(.orange)
                    }
                }
                            
    //            Section(header: Text("Fruits Section")) {
    //                ForEach(nonveg, id: (\.self)) { index in
    //                    Text(index.capitalized)
    //                }
    //                .onDelete { indexset in
    //                    deleteItem(indexset: indexset)
    //                }
    //                .onDelete(perform: deleteItem)
    //            }
            }
            .accentColor(.orange)
//            .listStyle(.sidebar)
            .navigationTitle("List view")
            .navigationBarItems(leading: EditButton(), trailing: Button(action: {
                addFruit()
            }, label: {
                Text("Add")
            }))
        }
        .accentColor(.red)
    }
    
    func deleteItem(indexset: IndexSet) {
        fruits.remove(atOffsets: indexset)
    }
    
    func moveItem(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func addFruit() {
        fruits.append("Coconut")
    }
}

struct ListBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootCamp()
    }
}

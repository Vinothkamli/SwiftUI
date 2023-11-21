//
//  ListView.swift
//  TodoList
//
//  Created by Apple - 1 on 17/10/22.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel

    var body: some View {
        ZStack {
            if listViewModel.items.isEmpty {
                NoItemsView()
            } else {
                List {
                    ForEach(listViewModel.items){ index in
                    ListRowView(item: index)
                            .onTapGesture {
                                withAnimation(.linear) {
                                    listViewModel.updateItem(item: index)
                                }
                            }
                    }
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                }
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("add", destination: AddView()) )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        ListView()
        }
        .environmentObject(ListViewModel())
    }
}


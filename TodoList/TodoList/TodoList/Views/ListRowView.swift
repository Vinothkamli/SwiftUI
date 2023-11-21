//
//  ListRowView.swift
//  TodoList
//
//  Created by Apple - 1 on 17/10/22.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
    }
}
struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(title: "this is title", isCompleted: true)
    static var item2 = ItemModel(title: "this is Second title", isCompleted: false)
    static var item3 = ItemModel(title: "this is Third title", isCompleted: true)
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
            ListRowView(item: item3)
        }
        .previewLayout(.sizeThatFits)
    }
}

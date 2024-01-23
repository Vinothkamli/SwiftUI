//
//  PickerBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 03/09/23.
//

import SwiftUI

struct PickerBootCamp: View {
    
    @State var selection: String = "Most Recent"
    @State private var isFilterApplied = false
    @State var filterSelection: [String] = [
    "Like", "Share", "Delete", "Repost"
    ]
    
    var body: some View {
        
        Picker(selection: $selection,
               label:
                    HStack {
                Text("Filter: ")
                Text(selection)
            }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(.red)
                .cornerRadius(10)
                .shadow(radius: 10),
               content: {
            
            ForEach(filterSelection, id: \.self) { option in
                Text(option)
                    .tag(option)
            }
            
        })
    }
}

struct PickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootCamp()
    }
}

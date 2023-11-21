//
//  ToggleBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 03/09/23.
//

import SwiftUI

struct TextEditorBootCamp: View {
    
    @State var text: String = "This is the starting text😍"
    @State var saveText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $text)
                    .frame(height: 250)
                    .colorMultiply(Color.gray)
                    .cornerRadius(5)
                
                Button {
                    saveText = text
                    text = ""
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                    
                }
                
                Text(saveText).bold()
                    .font(.title)
                
                Spacer()

            }
            .padding()
            .background(.green)
            .navigationTitle("TextEditorBootCamp")
        }
    }
}

struct TextEditorBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootCamp()
    }
}

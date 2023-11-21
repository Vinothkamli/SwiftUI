//
//  TextFieldBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 01/09/23.
//

import SwiftUI

struct TextFieldBootCamp: View {
    
    @State var textFieldText: String = ""
    @State var text: [String] = []
    
    
    @State var backgroundColors: [Color] = []


    
    var body: some View {
        ZStack {
            Color.white
            .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 20) {
                TextField("Type Here", text: $textFieldText)
                    .textFieldStyle(.automatic)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .foregroundColor(.black)
                    .font(.headline)
//                                    .overlay(
//                                        RoundedRectangle(cornerRadius: 20)
//                                            .stroke(Color.black, lineWidth: 1)
//                                    )
                    .shadow(radius: 5)
                
                Button {
                    if textAppropriate() {
                        saveText()
                    }
                } label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textAppropriate() ? .blue : .gray).cornerRadius(10)
                        .font(.headline).bold()
                }
                .shadow(radius: 5)
                
                .disabled(!textAppropriate())
                
                ScrollView(showsIndicators: false) {
                    ForEach(Array(text.enumerated()), id: \.element) { index, data in
                        Text(data)
                            .padding()
                            .background(backgroundColors[index % backgroundColors.count])
                            .cornerRadius(10.0)
                    }
                }
            }
            .padding()
            .edgesIgnoringSafeArea(.bottom)
        }
        
        .onAppear() {
            backgroundColors = [.red, .blue, .green, .yellow, .pink]
        }
    }
    
    func textAppropriate() -> Bool {
        if textFieldText.count >= 5 {
            return true
        }
        return false
    }
    
    func saveText() {
        text.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootCamp()
    }
}

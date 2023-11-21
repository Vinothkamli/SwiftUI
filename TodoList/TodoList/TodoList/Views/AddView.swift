//
//  AddView.swift
//  TodoList
//
//  Created by Apple - 1 on 21/10/22.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    var body: some View {
        ScrollView {
            VStack {
                TextField("Typt Something here...", text: $textFieldText)
                    .padding(.leading)
                    .frame(height: 55)
                    .background(.gray)
                    .cornerRadius(10)
                    .padding(.leading)
                    .padding(.trailing)
                Button(action: {
                    saveButton()
                }, label: {
                    Text("Save")
                        .foregroundColor(.primary)
                        .font(.title)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                        .padding(.leading)
                        .padding(.trailing)
                })
            }
        }
        .navigationBarTitle("Add an item")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    func saveButton() {
        if textApppreciate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
        
    }
    func textApppreciate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Enter Min 3 Character"
            showAlert.toggle()
            return false
        }
        return true
    }
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}

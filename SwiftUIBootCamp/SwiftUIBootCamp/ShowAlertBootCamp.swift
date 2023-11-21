//
//  ShowAlertBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 18/11/23.
//

import SwiftUI

struct ShowAlertBootCamp: View {
    
    @State private var showAlert: Bool = false
    @State private var bgColo: Color = Color.yellow
    @State private var alertTitle: String = ""
    @State private var alertMessage: String = ""
    @State private var alertType: myAlert? = nil
    
    enum myAlert {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            bgColo.ignoresSafeArea(edges: .all)
            VStack(spacing: 20) {
                Button {
//                    alertTitle = "Error Upload Vide"
//                    alertMessage = "Erroor"
                    alertType = .error
                    showAlert.toggle()
                } label: {
                    Text(showAlert ? "Btn 1 Clicked" : "Btn 1 Click Here")
                        .foregroundColor(bgColo == .yellow ? .white : .black)
                }
                
                Button {
//                    alertTitle = "Upload Video successfully"
//                    alertMessage = "successfully"
                    
//                    alertType = .success
                    showAlert.toggle()
                } label: {
                    Text(showAlert ? "Btn 2 Clicked" : "Btn 2 Click Here")
                        .foregroundColor(bgColo == .yellow ? .white : .black)
                }
                
                .alert(isPresented: $showAlert, content: {
    //                Alert(title: Text("Alert open"))
                    getAlert()
                })
            }
        }
 
    }
    
    func getAlert() -> Alert {
//        Alert(title: Text("Alert open"),
//              message: Text("kjdafbkdfvkjdbj"),
//              primaryButton: .cancel(),
//              secondaryButton: .destructive(Text("Delete"), action: {bgColo = .red}))\
        
        switch alertType {
        case .success:
           return Alert(title: Text("Sucess"), message: Text("Successfully Upload"), dismissButton: .default(Text("Ok")))
        case .error:
            return Alert(title: Text("Upload Error"), message: Text("Error"), dismissButton: .default(Text("Ok")))
        default:
//            return  Alert(title: Text("Error"), dismissButton: .default(Text("Ok")))
            return Alert(title: Text( "Errorrrr!!!!"))
        }
        
    }
}

#Preview {
    ShowAlertBootCamp()
}

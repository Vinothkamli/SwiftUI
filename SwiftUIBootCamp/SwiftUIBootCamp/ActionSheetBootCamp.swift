//
//  ActionSheetBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 01/09/23.
//

import SwiftUI

struct ActionSheetBootCamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@Username")
                Spacer()
                
                Button {
                    ActionSheetOptions.isMyPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
//                        .renderingMode(.original)
                        .accentColor(.primary)
                }

            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
                .cornerRadius(30)
                .padding(.horizontal)
            
            
    //        Button {
    //            showActionSheet.toggle()
    //        } label: {
    //            Text("Click Here")
    //        }
            
    //        .actionSheet(isPresented: $showActionSheet) {
    //            return ActionSheet(title: Text("Show Action Sheet"))
    //        }
            
            .actionSheet(isPresented: $showActionSheet) {
                actionSheet()
        }
        }

    }
    
    func actionSheet() -> ActionSheet {
        
        //        return ActionSheet(title: Text("Show"))
        
        //        let button1: ActionSheet.Button = .default(Text("Default"))
        //        let button2: ActionSheet.Button = .cancel()
        //        let button3: ActionSheet.Button = .destructive(Text("Descriptive"))
        
        //        return ActionSheet(title: Text("Show Title"), message: Text("Show Message"), buttons: [button1, button2, button3])
        //    }
        
        let shareButton: ActionSheet.Button = .default(Text("Share"))
        let reportButton: ActionSheet.Button = .destructive(Text("Report"))
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete"))
        let cancelButton: ActionSheet.Button = .cancel()
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(title: Text("Show Title"), message: Text("Show Message"), buttons: [shareButton, deleteButton, cancelButton])
        case .isOtherPost:
            return ActionSheet(title: Text("Show Title"), message: Text("Show Message"), buttons: [shareButton, reportButton, deleteButton, cancelButton])
        }
        
    }
}

struct ActionSheetBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootCamp()
    }
}

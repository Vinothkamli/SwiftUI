//
//  CustomDataModelBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 21/11/23.
//

import SwiftUI



struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let verify: Bool
}


struct CustomDataModelBootCamp: View {
    
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Kamli", userName: "Vinoth_Kamli1997", followerCount: 129, verify: true),
        UserModel(displayName: "Vinoth", userName: "Vinoth_1997", followerCount: 129, verify: true),
        UserModel(displayName: "Dhuruv", userName: "Dhuruv_2000", followerCount: 90, verify: false),
        UserModel(displayName: "Mapla", userName: "Mapla_997", followerCount: 19, verify: true),
        UserModel(displayName: "Anandhu", userName: "Anandhu1997", followerCount: 109, verify: false)
    ]
    
    @State private var selectedName: String? = nil
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { name in
                    HStack(spacing: 10) {
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(name.displayName == selectedName ? .blue : .red)
                        VStack(alignment: .leading, spacing: 5) {
                            Text(name.displayName)
                                .onTapGesture {
                                    selectedName = name.displayName
                                }
                            Text(name.userName)
                                .font(.caption2)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                        
                        if name.verify {
                            Image(systemName: "checkmark.seal.fill")                                    .resizable()
                                .foregroundColor(.blue)
                                .frame(width: 20, height: 20, alignment: .center)
                                .scaledToFit()
                        }
                        
                        VStack(spacing: 5) {
                            Text("Followers")
                            Text("\(name.followerCount)")
                        }
                        
                    }
                    .padding(.vertical, 10)
                }
            }
            .navigationTitle("Users")
        }
    }
}

#Preview {
    CustomDataModelBootCamp()
}

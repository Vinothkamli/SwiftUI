//
//  EnvironmentObjectBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 20/12/23.
//

import SwiftUI

//Observable Object
//State Object
//Environment Object

class EnvironmentObjectModel: ObservableObject {
    @Published var dataArray: [String] = []
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectBootCamp: View {
    
    @StateObject var viewModel: EnvironmentObjectModel = EnvironmentObjectModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(destination:
                                    DetailsView(selectedItem: item)
                    ) {
                        Text(item)
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct DetailsView: View {
    var selectedItem: String
    
    @Environment(\.presentationMode) var back
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .center) {
                HStack {

                    Button(action: {
                        back.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "arrow.left")
                            .tint(.black)
                            .font(.system(size: 24))
                            .padding(.horizontal)
                    })
                    Spacer()

                    Text("Title Section").bold()
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                    Spacer()

                }
                Text(selectedItem)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(20)
                
            }
            .edgesIgnoringSafeArea(.all)           
            .navigationBarBackButtonHidden(true)
            
        }
    }
}


#Preview {
    EnvironmentObjectBootCamp()
}

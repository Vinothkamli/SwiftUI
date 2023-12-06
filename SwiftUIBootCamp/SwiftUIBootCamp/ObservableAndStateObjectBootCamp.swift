//
//  ObservableAndStateObjectBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 22/11/23.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Apple", count: 12)
        let fruit2 = FruitModel(name: "Orange", count: 9)
        let fruit3 = FruitModel(name: "Banana", count: 32)
        let fruit4 = FruitModel(name: "WaterMelon", count: 6)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.fruitArray.append(fruit4)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ObservableAndStateObjectBootCamp: View {
    
//    @State var fruitArray: [FruitViewModel] = []
    
    //@StateObject  -> USE THIS ON CREATION / INIT
    //@ObservableObject -> USER THIS FOR SUBVIEWS
   @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
                List {
                    if !fruitViewModel.isLoading {

                    ForEach(fruitViewModel.fruitArray) { fruit in
                         
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline).bold()
                        }
                    }
    //                .onDelete(perform: { indexSet in
    //                    deleteFruit(index: indexSet)
    //                })
                    
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }  else {
                    ProgressView()
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            
            .onAppear {
                fruitViewModel.getFruits()
            }
        }
    }
}

#Preview {
    ObservableAndStateObjectBootCamp()
}

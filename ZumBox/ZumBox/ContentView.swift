//
//  ContentView.swift
//  ZumBox
//
//  Created by TechnoTackleMac on 02/01/23.
//

import SwiftUI

struct ContentView: View {
    
    var onboardingArray: [OnboardingModel] = [
        OnboardingModel(image: "walkthrough_img1", title: "Special Meal", description: "Recommend good quality restaurants, to bring customers great meals"),
        OnboardingModel(image: "walkthrough_img2", title: "Love Food", description: "Bring to customers new dishes, meeting quality standards and a variety of forms"),
        OnboardingModel(image: "walkthrough_img3", title: "Review", description: "Always the most objective review of food from top reviwers")
    ]
    
    @State var selection:  Int = 0
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Spacer()
                HStack(spacing: 0) {
                    Spacer()
                    
                    NavigationLink(destination: {
                        HomeScreen()
                    }, label: {
                        HStack(spacing: 0) {
                            Text("Skip")
                                .foregroundColor(.orange)
                                .padding(.horizontal, 5)
                            Image(systemName: "arrow.right")
                                .foregroundColor(Color.orange)
                        }
                    })
                    
                }
                .padding()
                
                TabView(selection: $selection) {
                    ForEach(0..<onboardingArray.count, id: \.self) { index in
                        let item: OnboardingModel = onboardingArray[index]
                        VStack(spacing: 10) {
                            Image(item.image)
                                .resizable()
                                .frame(maxWidth: 280, maxHeight: 300)
                            Text(item.title)
                                .font(.title)
                                .fontWeight(.black)
                            Text(item.description)
                                .font(.subheadline)
                                .multilineTextAlignment(.center)
                        }
                        .padding()
                        .padding(.vertical)
                        .padding(.bottom)
                        .background(Color.white)
                        .cornerRadius(40)
                        .shadow(color: .black.opacity(0.3), radius: 8, x: 0, y: 0)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                
                HStack {
                    ForEach(0..<onboardingArray.count, id: \.self) { index in
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(index == selection ? Color.orange : Color.gray)
                    }
                }
                
                Button(action: {
                    print("selection \(selection)")
                    print("selection \(onboardingArray.count)")
                    if selection < onboardingArray.count-1 {
                        selection += 1
                    } else {
                        print("else")
                    }
                }, label: {
                    Text(selection < onboardingArray.count - 1 ? "next" : "Start")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color.white)
                        .background(Color.orange)
                        .cornerRadius(10)
                })
                .padding()
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

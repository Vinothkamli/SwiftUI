//
//  OnboardingView.swift
//  ZumBox
//
//  Created by TechnoTackleMac on 03/01/23.
//

import SwiftUI

struct OnboardingView: View {
    
    var onboardingArray: [OnboardingModel] = [
        OnboardingModel(image: "walkthrough_img1", title: "Special Meal", description: "Recommend good quality restaurants, to bring customers great meals"),
        OnboardingModel(image: "walkthrough_img2", title: "Love Food", description: "Bring to customers new dishes, meeting quality standards and a variety of forms"),
        OnboardingModel(image: "walkthrough_img3", title: "Review", description: "Always the most objective review of food from top reviwers")
    ]
    
    var body: some View {
        ForEach(0..<onboardingArray.count, id: \.self) { index in
            let item: OnboardingModel = onboardingArray[index]
            VStack(spacing: 10) {

                Image(item.image)
                    .resizable()
                    .frame(maxWidth: 400, maxHeight: 400)
                Text(item.title)
                    .font(.title)
                    .fontWeight(.black)
                Text(item.description)
                    .font(.subheadline)
            }
            .padding()
            .background(Color.yellow)
            .cornerRadius(20)
            .shadow(radius: 20)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

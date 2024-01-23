//
//  OnboardingView.swift
//  SwiftUIBootCamp
//  Created by TechnoTackle on 22/12/23.
//

import SwiftUI

struct OnboardingView: View {
    //Onboarding Status
    /*
     Welcome Screen
     Add Name
     Add Age
     Add Gender
     */
    
    @State private var onBoardingState: Int = 0
    @State var nameField: String = ""
    @State var age: Double = 18
    @State var gender: String = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.gray]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            //Content
            ZStack {
                switch onBoardingState {
                case 0:
                    WelcomeScreen
                case 1:
                    AddNameScreen
                case 2:
                    AddAgeScreen
                case 3:
                    AddGenderScreen
                default:
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(.gray)
                }
            }
            
            //Button
            VStack {
                Spacer()
                BottomButtom
            }
            .padding()
        }
    }
    
    func sum(a: Int, b: Int) -> Int {
        return a + b
    }
    
    func getString()-> String {
        return "World"
    }
    
    func getBool()-> Bool {
        return false
    }
}

#Preview {
    OnboardingView()
}

extension OnboardingView {
    
    private var BottomButtom: some  View {
        Text(onBoardingState == 0 ? "Sigin" : onBoardingState == 3 ? "FINISH" : "Next").bold()
            .foregroundStyle(.pink)
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .background(.white)
            .cornerRadius(20)
//            .animation(nil)
            .onTapGesture {
                handleNextIndex()
            }
    }
    
    private var WelcomeScreen: some  View {
        VStack(spacing: 20) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
            
            Text("Found Your Match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 2)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom
                )
            
            Text("This app for finding you match online!, In thie tutorial we are practicing using AppStorage and other Swift UI Techniques")
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .foregroundStyle(.white)
            Spacer()
        }
        .padding(20)
    }
    
    private var AddNameScreen: some View {
        
        VStack(spacing: 20) {
            Spacer()
            
            Text("What's Your Name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            TextField("Enter Your Name", text: $nameField)
                .font(.headline)
                .frame(height: 50)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            
            Spacer()
            Spacer()
            Spacer()
            
        }
        .padding(20)
    }
    
    private var AddAgeScreen: some View {
        
        VStack(spacing: 20) {
            Spacer()
            
            Text("What's Your Age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Text("\(String(format: "%.1f", age))").bold()
                .font(.system(size: 24))
                .foregroundStyle(.white)
            
            Slider(value: $age, in: 18...80)
                .accentColor(.white)
            
            Spacer()
            Spacer()
            Spacer()
            
        }
        .padding(20)
    }
    
    
    private var AddGenderScreen: some View {
        
        VStack {
            Spacer()
            
            Text("What's Your Gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Picker("Select Gender", selection: $gender) {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non-Binary").tag("Non-Binary")
                
            }
            .pickerStyle(WheelPickerStyle())
            
            Spacer()
            Spacer()
            Spacer()
            
        }
        .padding(20)
    }
}


//MARK: Function
extension OnboardingView {
    func handleNextIndex() {
        
        if onBoardingState == 3 {
            
        } else {
            withAnimation(.spring()) {
                onBoardingState += 1
            }
        }

    }
}

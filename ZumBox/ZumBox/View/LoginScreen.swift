//
//  LoginScreen.swift
//  ZumBox
//
//  Created by apple on 07/01/23.
//

import SwiftUI

struct LoginScreen: View {
    @State private var phoneNumber: String = ""
    var body: some View {
        ZStack {
            Image("loginBgImg")
                .resizable()
                .edgesIgnoringSafeArea(.bottom)
            VStack(spacing: 15) {
                Text("Login or sign up ")
                    .font(.title2)
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Text("")
                            .padding()
                            .frame(maxWidth: 90)
                            .background(.white)
                            .cornerRadius(10)
                            .shadow(radius: 3)
                            .padding(.bottom)
                    })
                    TextField("Enter Phone Number", text: $phoneNumber)
                        .frame(height: 45)
                        .padding([.leading, .trailing], 24)
                        .background(.white)
                        .cornerRadius(10)
                        .shadow(radius: 2)
                        .padding(.bottom)
                }
                
                NavigationLink(destination: {
                    HomeScreen()
                }, label: {
                    Text("Confirm").bold()
                        .font(.custom("", size: 25))
                        .frame(maxWidth: 250, maxHeight: 50)
                        .foregroundColor(Color.white)
                        .background(Color.red)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                })
                
                Text("or")
                    .font(.footnote)
                
                Button(action: {
                    if isValidPhone(phone: phoneNumber) {
                        print("true")
                    } else {
                        print("false")
                    }
                }, label: {
                    Text("G+").bold()
                        .font(.custom("", size: 20))
                        .frame(maxWidth: 70, maxHeight: 55)
                        .foregroundColor(Color.white)
                        .background(Color.red)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                })
                HStack {
                    Text("Skip and Explore as")
                        .foregroundColor(.gray)
                        .padding(.bottom)
                    Button(action: {
                        
                    }, label: {
                        Text("Guest").bold()
                            .foregroundColor(.red)
                            .padding(.bottom)
                        
                    })
                }
            }
            .padding()
            .frame(maxWidth: 350, maxHeight: 350)
            .background(.white)
            .cornerRadius(20)
            .shadow(radius: 10)
        }
    }
    
    func isValidPhone(phone: String) -> Bool {
            let phoneRegex = "^[0-9+]{0,1}+[0-9]{5,16}$"
            let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
            return phoneTest.evaluate(with: phone)
        }
    
    
    func login() -> LoginResponse {
        let endpoint = "https://yumbox.in/web/v1/signup/register"
        let loginDictionary = ["device_os_type_id":"4",
                               "gcm_id":"",
                               "customer_mobile":"9786185899",
                               "login_with":"mobile",
                               "unique_device_id":"fb7b22c8bc0c8b5b",
                               "merchant_id":"238",
                               "auth_token":"e7cea1cdb37ceddc35dabcd6eb2d3b12"
        ]
        let loginData = try! JSONSerialization.data(withJSONObject: loginDictionary)
        
        var request = URLRequest(url: URL(string: endpoint)!)
        request.httpMethod = "POST"
        request.httpBody = loginData
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared
        let semaphore = DispatchSemaphore(value: 0)
        
        var responseData: Data?
        var loginResponse: LoginResponse?
        
        let task = session.dataTask(with: request) { data, response, error in
            if let data = data {
                responseData = data
                print("if responseData \(String(describing: responseData))")
                
            }
            if let error = error {
                print("error \(error)")
            }
            semaphore.signal()
        }
        
        task.resume()
        _ = semaphore.wait(timeout: .distantFuture)
        
        if let responseData = responseData {
            loginResponse = try! JSONDecoder().decode(LoginResponse.self, from: responseData)
            print("if response \(String(describing: loginResponse))")
        }
        
        return loginResponse!
    }
    
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}

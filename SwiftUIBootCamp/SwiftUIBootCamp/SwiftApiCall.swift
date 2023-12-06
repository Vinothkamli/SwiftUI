//
//  SwiftApiCall.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 06/12/23.
//

import SwiftUI

struct SwiftApiCall: View {
    @State private var users: [User] = []
    
    var body: some View {
        VStack {
            Button("Fetch Names") {
                apiCall()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(users, id: \.id) { user in
                        VStack() {
                            Text("Name: \(user.name)")
                            Text("Email: \(user.email)")
                        }
                        .padding(.horizontal, 20)
                        .background(Color.red)
                        .cornerRadius(10.0)
                        .padding(5)
                    }
                }
            }
        }
    }
    
    func fetchData() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error)")
                return
            }
            
            guard let data = data else {
                print("No data received")
                return
            }
            
            do {
                let fetchedUsers = try JSONDecoder().decode([User].self, from: data)
                DispatchQueue.main.async {
                    self.users = fetchedUsers
                }
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }.resume()
    }
    
    func apiCall() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print("Error: \(error)")
                return
            }
            
            guard let data = data else {
                print("Api No data")
                return
            }
            
            do {
                let usersDe = try JSONDecoder().decode([User].self, from: data)
                DispatchQueue.main.async {
                    self.users = usersDe
                }
            } catch {
                print("Error Api Json")
            }
        }
        .resume()
    }
}

#Preview {
    SwiftApiCall()
}


struct User: Decodable {
    let id: Int
    let name: String
    let email: String
}


